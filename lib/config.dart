import 'package:car_rental_locate/app/dio_helper.dart';
import 'package:car_rental_locate/app/route/app_route.dart';
import 'package:car_rental_locate/commons/constants/networks.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/repositories/repositories.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> configDI() async {
  final appRoute = AppRoute();
  final sharedPreferences = await SharedPreferences.getInstance();

  final dioOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: connectTimeout),
    receiveTimeout: const Duration(milliseconds: receiveTimeout),
    contentType: Headers.jsonContentType,
  );
  final dio = Dio(dioOptions);

  final authenticationRepository =
      AuthenticationRepository(dio: dio, sharedPreferences: sharedPreferences);

  final helper = DioHelper(
    dio: dio,
    authenticationRepository: authenticationRepository,
    sharedPreferences: sharedPreferences,
    options: dioOptions,
  );

  getIt
    ..registerSingleton<AppRoute>(appRoute)
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<DioHelper>(helper)
    ..registerSingleton<AuthenticationRepository>(authenticationRepository);
}
