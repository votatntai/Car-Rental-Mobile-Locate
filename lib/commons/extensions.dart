import 'package:car_rental_locate/models/api_response.dart';
import 'package:dio/dio.dart';

extension ApiErrorX on DioError {
  ApiResponse<T> getErrorMessage<T>() {
    return ApiResponse.error(error: toString());
  }
}
