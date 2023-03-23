// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String,
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      carType: $enumDecode(_$CarTypeEnumMap, json['carType']),
      brand: json['brand'] as String,
      description: json['description'] as String,
      collateral: json['collateral'] as String,
      rules: json['rules'] as String,
      location: json['location'] as String,
      rate: (json['rate'] as num).toDouble(),
      rentalCarType: $enumDecode(_$RentalCarTypeEnumMap, json['rentalCarType']),
      numberTrip: json['numberTrip'] as int? ?? 0,
      startPickUpTime: const TimeOfDayConverter()
          .fromJson(json['startPickUpTime'] as String),
      endPickUpTime:
          const TimeOfDayConverter().fromJson(json['endPickUpTime'] as String),
      startReturnTime: const TimeOfDayConverter()
          .fromJson(json['startReturnTime'] as String),
      endReturnTime:
          const TimeOfDayConverter().fromJson(json['endReturnTime'] as String),
      deliveryDistance: (json['deliveryDistance'] as num?)?.toDouble(),
      distanceLimit: (json['distanceLimit'] as num).toDouble(),
      overDistancePrice: (json['overDistancePrice'] as num).toDouble(),
      overTimePrice: (json['overTimePrice'] as num).toDouble(),
      carOwnerId: json['carOwnerId'] as String,
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'price': instance.price,
      'carType': _$CarTypeEnumMap[instance.carType]!,
      'brand': instance.brand,
      'description': instance.description,
      'collateral': instance.collateral,
      'rules': instance.rules,
      'location': instance.location,
      'rate': instance.rate,
      'rentalCarType': _$RentalCarTypeEnumMap[instance.rentalCarType]!,
      'numberTrip': instance.numberTrip,
      'startPickUpTime':
          const TimeOfDayConverter().toJson(instance.startPickUpTime),
      'endPickUpTime':
          const TimeOfDayConverter().toJson(instance.endPickUpTime),
      'startReturnTime':
          const TimeOfDayConverter().toJson(instance.startReturnTime),
      'endReturnTime':
          const TimeOfDayConverter().toJson(instance.endReturnTime),
      'deliveryDistance': instance.deliveryDistance,
      'distanceLimit': instance.distanceLimit,
      'overDistancePrice': instance.overDistancePrice,
      'overTimePrice': instance.overTimePrice,
      'carOwnerId': instance.carOwnerId,
    };

const _$CarTypeEnumMap = {
  CarType.mini: 'mini',
  CarType.sedan: 'sedan',
  CarType.hatchback: 'hatchback',
  CarType.suv: 'suv',
  CarType.midsizeSub: 'midsizeSub',
  CarType.minivan: 'minivan',
  CarType.pickup: 'pickup',
  CarType.other: 'other',
};

const _$RentalCarTypeEnumMap = {
  RentalCarType.selfDrivingCar: 'selfDrivingCar',
  RentalCarType.carWithDriver: 'carWithDriver',
};
