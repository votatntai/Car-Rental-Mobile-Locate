import 'package:car_rental_locate/commons/constants/cars.dart';
import 'package:car_rental_locate/commons/constants/networks.dart';
import 'package:car_rental_locate/commons/extensions.dart';
import 'package:car_rental_locate/commons/type.dart';
import 'package:car_rental_locate/models/api_response.dart';
import 'package:car_rental_locate/models/car.dart';
import 'package:car_rental_locate/models/pagination_result.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CarRepository {
  CarRepository({
    required this.dio,
    required this.sharedPreferences,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;

  Future<ApiResponse<List<Car>>> carsIsNotTracking({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        'pageNumber': pageNumber - 1,
        'pageSize': pageSize,
      };

      final result = await dio.get<dynamic>(
        'cars/is-not-tracking',
        queryParameters: queryParameters,
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final cars = (result.data! as List<dynamic>)
            .map((e) => Car.fromJson(e))
            .toList();

        return ApiSuccess(cars);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car?>> selectedCar() async {
    try {
      final carId = sharedPreferences.getString(selectedCarRefs);

      if (carId == null) return const ApiResponse.success(null);
      ;
      final result = await dio.get<JsonObject>(
        'cars/$carId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> trackingCar(String carId) async {
    try {
      final result = await dio.put<dynamic>(
        'cars/tracking/$carId',
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        sharedPreferences.setString(selectedCarRefs, carId);
        return const ApiSuccess(true);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> unTrackingCar(String carId) async {
    try {
      final result = await dio.put<dynamic>(
        'cars/cancel-tracking/$carId',
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        sharedPreferences.remove(selectedCarRefs);
        return const ApiSuccess(true);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> carById(String carId) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/$carId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
