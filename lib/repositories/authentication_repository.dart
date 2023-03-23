import 'dart:async';

import 'package:car_rental_locate/commons/constants/authentication.dart';
import 'package:car_rental_locate/commons/constants/networks.dart';
import 'package:car_rental_locate/commons/extensions.dart';
import 'package:car_rental_locate/models/api_response.dart';
import 'package:car_rental_locate/models/authentication_result.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository({
    required this.dio,
    required this.sharedPreferences,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;

  final StreamController<AuthenticationStatus> _authenticationController =
      StreamController<AuthenticationStatus>.broadcast();

  Stream<AuthenticationStatus> get status async* {
    final token = sharedPreferences.getString(accessTokenRefs);
    if (token != null && token.isNotEmpty) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }

    yield* _authenticationController.stream;
  }

  Future<ApiResponse<bool>> login(String username, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        '/auth/car-owners',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);

        // update auth status
        _authenticationController.add(AuthenticationStatus.authenticated);

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<void> logOut() async {
    _authenticationController.add(AuthenticationStatus.unauthenticated);

    await sharedPreferences.setString(accessTokenRefs, '');
    await sharedPreferences.setString(
      refreshTokenRefs,
      '',
    );
  }

  Future<void> dispose() async {
    await _authenticationController.close();
  }
}
