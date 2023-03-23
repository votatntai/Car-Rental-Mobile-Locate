import 'package:car_rental_locate/commons/constants/networks.dart';
import 'package:car_rental_locate/models/car_owner.dart';
import 'package:dio/dio.dart';

class CarOwnerRepository {
  CarOwnerRepository({required this.dio});

  final Dio dio;

  Future<CarOwner?> getProfile() async {
    // if (user != null) return user;
    try {
      final result = await dio.get<Map<String, dynamic>>('auth/car-owners');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = CarOwner.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
