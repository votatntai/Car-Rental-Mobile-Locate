import 'package:car_rental_locate/models/additional_charge.dart';
import 'package:car_rental_locate/models/car_feature.dart';
import 'package:car_rental_locate/models/car_model.dart';
import 'package:car_rental_locate/models/car_owner.dart';
import 'package:car_rental_locate/models/car_type.dart';
import 'package:car_rental_locate/models/converters/TimeOfDayConverter.dart';
import 'package:car_rental_locate/models/driver.dart';
import 'package:car_rental_locate/models/enums/rental_car_type.dart';
import 'package:car_rental_locate/models/feedback.dart';
import 'package:car_rental_locate/models/image.dart';
import 'package:car_rental_locate/models/location.dart';
import 'package:car_rental_locate/models/production_company.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

part 'car.g.dart';

@freezed
class Car with _$Car {
  const Car._();

  const factory Car({
    required String id,
    String? name,
    required String licensePlate,
    required double price,
    required double rented,
    String? description,
    List<ImageModel>? images,
    List<FeedbackModel>? feedBacks,
    List<CarFeature>? carFeatures,
    List<CarType>? carTypes,
    ProductionCompany? productionCompany,
    required CarModel model,
    CarOwner? carOwner,
    Driver? driver,
    required Location location,
    required AdditionalCharge additionalCharge,
    required double star,
    required String status,
    @TimeOfDayConverter() required TimeOfDay receiveStartTime,
    @TimeOfDayConverter() required TimeOfDay receiveEndTime,
    @TimeOfDayConverter() required TimeOfDay returnStartTime,
    @TimeOfDayConverter() required TimeOfDay returnEndTime,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  // RentalCarType get rentalCarType {
  //   if (driver == null) return RentalCarType.selfDrivingCar;
  //   return RentalCarType.carWithDriver;
  // }

  String? get imageUrl {
    if (images == null || images?.isEmpty == true) return null;

    final img =
        images?.where((element) => element.type == 'Thumbnail').toList();

    if (img != null && img.isNotEmpty) return img.first.url;

    return images?.first.url;
  }

  List<ImageModel>? get thumbnails {
    if (images == null || images?.isEmpty == true) return [];

    return images?.where((element) => element.type == 'Thumbnail').toList();
  }
}
