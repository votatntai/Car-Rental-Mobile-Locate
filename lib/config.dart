import 'dart:async';

import 'package:car_rental_locate/app/dio_helper.dart';
import 'package:car_rental_locate/app/route/app_route.dart';
import 'package:car_rental_locate/commons/constants/networks.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/repositories/car_owner_repository.dart';
import 'package:car_rental_locate/repositories/car_repository.dart';
import 'package:car_rental_locate/repositories/repositories.dart';
import 'package:car_rental_locate/repositories/tracking_repository.dart';
import 'package:dio/dio.dart';
import 'package:location/location.dart';
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

  final tracking = TrackingRepository();

  getIt
    ..registerSingleton<AppRoute>(appRoute)
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<DioHelper>(helper)
    ..registerSingleton<AuthenticationRepository>(authenticationRepository)
    ..registerSingleton<CarOwnerRepository>(CarOwnerRepository(dio: dio))
    ..registerSingleton<CarRepository>(CarRepository(
      dio: dio,
      sharedPreferences: sharedPreferences,
    ))
    ..registerSingleton<TrackingRepository>(tracking);

  await tracking.connect();
}

Future<void> locationConfig() async {
  Location location = Location();

  bool serviceEnabled;
  PermissionStatus permissionGranted;

  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return;
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

  if (permissionGranted == PermissionStatus.granted) {
    location.enableBackgroundMode(enable: true);
    getIt.registerSingleton<Location>(location);
  }
}
