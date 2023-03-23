// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  CarType get carType => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get collateral => throw _privateConstructorUsedError;
  String get rules => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  RentalCarType get rentalCarType => throw _privateConstructorUsedError;
  int get numberTrip => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get startPickUpTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get endPickUpTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get startReturnTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get endReturnTime => throw _privateConstructorUsedError;
  double? get deliveryDistance => throw _privateConstructorUsedError;
  double get distanceLimit => throw _privateConstructorUsedError;
  double get overDistancePrice => throw _privateConstructorUsedError;
  double get overTimePrice => throw _privateConstructorUsedError;
  String get carOwnerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> images,
      double price,
      CarType carType,
      String brand,
      String description,
      String collateral,
      String rules,
      String location,
      double rate,
      RentalCarType rentalCarType,
      int numberTrip,
      @TimeOfDayConverter() TimeOfDay startPickUpTime,
      @TimeOfDayConverter() TimeOfDay endPickUpTime,
      @TimeOfDayConverter() TimeOfDay startReturnTime,
      @TimeOfDayConverter() TimeOfDay endReturnTime,
      double? deliveryDistance,
      double distanceLimit,
      double overDistancePrice,
      double overTimePrice,
      String carOwnerId});
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? carType = null,
    Object? brand = null,
    Object? description = null,
    Object? collateral = null,
    Object? rules = null,
    Object? location = null,
    Object? rate = null,
    Object? rentalCarType = null,
    Object? numberTrip = null,
    Object? startPickUpTime = null,
    Object? endPickUpTime = null,
    Object? startReturnTime = null,
    Object? endReturnTime = null,
    Object? deliveryDistance = freezed,
    Object? distanceLimit = null,
    Object? overDistancePrice = null,
    Object? overTimePrice = null,
    Object? carOwnerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      collateral: null == collateral
          ? _value.collateral
          : collateral // ignore: cast_nullable_to_non_nullable
              as String,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      numberTrip: null == numberTrip
          ? _value.numberTrip
          : numberTrip // ignore: cast_nullable_to_non_nullable
              as int,
      startPickUpTime: null == startPickUpTime
          ? _value.startPickUpTime
          : startPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endPickUpTime: null == endPickUpTime
          ? _value.endPickUpTime
          : endPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      startReturnTime: null == startReturnTime
          ? _value.startReturnTime
          : startReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endReturnTime: null == endReturnTime
          ? _value.endReturnTime
          : endReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      deliveryDistance: freezed == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      distanceLimit: null == distanceLimit
          ? _value.distanceLimit
          : distanceLimit // ignore: cast_nullable_to_non_nullable
              as double,
      overDistancePrice: null == overDistancePrice
          ? _value.overDistancePrice
          : overDistancePrice // ignore: cast_nullable_to_non_nullable
              as double,
      overTimePrice: null == overTimePrice
          ? _value.overTimePrice
          : overTimePrice // ignore: cast_nullable_to_non_nullable
              as double,
      carOwnerId: null == carOwnerId
          ? _value.carOwnerId
          : carOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$_CarCopyWith(_$_Car value, $Res Function(_$_Car) then) =
      __$$_CarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> images,
      double price,
      CarType carType,
      String brand,
      String description,
      String collateral,
      String rules,
      String location,
      double rate,
      RentalCarType rentalCarType,
      int numberTrip,
      @TimeOfDayConverter() TimeOfDay startPickUpTime,
      @TimeOfDayConverter() TimeOfDay endPickUpTime,
      @TimeOfDayConverter() TimeOfDay startReturnTime,
      @TimeOfDayConverter() TimeOfDay endReturnTime,
      double? deliveryDistance,
      double distanceLimit,
      double overDistancePrice,
      double overTimePrice,
      String carOwnerId});
}

/// @nodoc
class __$$_CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$_Car>
    implements _$$_CarCopyWith<$Res> {
  __$$_CarCopyWithImpl(_$_Car _value, $Res Function(_$_Car) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? carType = null,
    Object? brand = null,
    Object? description = null,
    Object? collateral = null,
    Object? rules = null,
    Object? location = null,
    Object? rate = null,
    Object? rentalCarType = null,
    Object? numberTrip = null,
    Object? startPickUpTime = null,
    Object? endPickUpTime = null,
    Object? startReturnTime = null,
    Object? endReturnTime = null,
    Object? deliveryDistance = freezed,
    Object? distanceLimit = null,
    Object? overDistancePrice = null,
    Object? overTimePrice = null,
    Object? carOwnerId = null,
  }) {
    return _then(_$_Car(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarType,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      collateral: null == collateral
          ? _value.collateral
          : collateral // ignore: cast_nullable_to_non_nullable
              as String,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      numberTrip: null == numberTrip
          ? _value.numberTrip
          : numberTrip // ignore: cast_nullable_to_non_nullable
              as int,
      startPickUpTime: null == startPickUpTime
          ? _value.startPickUpTime
          : startPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endPickUpTime: null == endPickUpTime
          ? _value.endPickUpTime
          : endPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      startReturnTime: null == startReturnTime
          ? _value.startReturnTime
          : startReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endReturnTime: null == endReturnTime
          ? _value.endReturnTime
          : endReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      deliveryDistance: freezed == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      distanceLimit: null == distanceLimit
          ? _value.distanceLimit
          : distanceLimit // ignore: cast_nullable_to_non_nullable
              as double,
      overDistancePrice: null == overDistancePrice
          ? _value.overDistancePrice
          : overDistancePrice // ignore: cast_nullable_to_non_nullable
              as double,
      overTimePrice: null == overTimePrice
          ? _value.overTimePrice
          : overTimePrice // ignore: cast_nullable_to_non_nullable
              as double,
      carOwnerId: null == carOwnerId
          ? _value.carOwnerId
          : carOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car implements _Car {
  const _$_Car(
      {required this.id,
      required this.name,
      required final List<String> images,
      required this.price,
      required this.carType,
      required this.brand,
      required this.description,
      required this.collateral,
      required this.rules,
      required this.location,
      required this.rate,
      required this.rentalCarType,
      this.numberTrip = 0,
      @TimeOfDayConverter() required this.startPickUpTime,
      @TimeOfDayConverter() required this.endPickUpTime,
      @TimeOfDayConverter() required this.startReturnTime,
      @TimeOfDayConverter() required this.endReturnTime,
      this.deliveryDistance,
      required this.distanceLimit,
      required this.overDistancePrice,
      required this.overTimePrice,
      required this.carOwnerId})
      : _images = images;

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final double price;
  @override
  final CarType carType;
  @override
  final String brand;
  @override
  final String description;
  @override
  final String collateral;
  @override
  final String rules;
  @override
  final String location;
  @override
  final double rate;
  @override
  final RentalCarType rentalCarType;
  @override
  @JsonKey()
  final int numberTrip;
  @override
  @TimeOfDayConverter()
  final TimeOfDay startPickUpTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay endPickUpTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay startReturnTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay endReturnTime;
  @override
  final double? deliveryDistance;
  @override
  final double distanceLimit;
  @override
  final double overDistancePrice;
  @override
  final double overTimePrice;
  @override
  final String carOwnerId;

  @override
  String toString() {
    return 'Car(id: $id, name: $name, images: $images, price: $price, carType: $carType, brand: $brand, description: $description, collateral: $collateral, rules: $rules, location: $location, rate: $rate, rentalCarType: $rentalCarType, numberTrip: $numberTrip, startPickUpTime: $startPickUpTime, endPickUpTime: $endPickUpTime, startReturnTime: $startReturnTime, endReturnTime: $endReturnTime, deliveryDistance: $deliveryDistance, distanceLimit: $distanceLimit, overDistancePrice: $overDistancePrice, overTimePrice: $overTimePrice, carOwnerId: $carOwnerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Car &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.collateral, collateral) ||
                other.collateral == collateral) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.numberTrip, numberTrip) ||
                other.numberTrip == numberTrip) &&
            (identical(other.startPickUpTime, startPickUpTime) ||
                other.startPickUpTime == startPickUpTime) &&
            (identical(other.endPickUpTime, endPickUpTime) ||
                other.endPickUpTime == endPickUpTime) &&
            (identical(other.startReturnTime, startReturnTime) ||
                other.startReturnTime == startReturnTime) &&
            (identical(other.endReturnTime, endReturnTime) ||
                other.endReturnTime == endReturnTime) &&
            (identical(other.deliveryDistance, deliveryDistance) ||
                other.deliveryDistance == deliveryDistance) &&
            (identical(other.distanceLimit, distanceLimit) ||
                other.distanceLimit == distanceLimit) &&
            (identical(other.overDistancePrice, overDistancePrice) ||
                other.overDistancePrice == overDistancePrice) &&
            (identical(other.overTimePrice, overTimePrice) ||
                other.overTimePrice == overTimePrice) &&
            (identical(other.carOwnerId, carOwnerId) ||
                other.carOwnerId == carOwnerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        const DeepCollectionEquality().hash(_images),
        price,
        carType,
        brand,
        description,
        collateral,
        rules,
        location,
        rate,
        rentalCarType,
        numberTrip,
        startPickUpTime,
        endPickUpTime,
        startReturnTime,
        endReturnTime,
        deliveryDistance,
        distanceLimit,
        overDistancePrice,
        overTimePrice,
        carOwnerId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarCopyWith<_$_Car> get copyWith =>
      __$$_CarCopyWithImpl<_$_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {required final String id,
      required final String name,
      required final List<String> images,
      required final double price,
      required final CarType carType,
      required final String brand,
      required final String description,
      required final String collateral,
      required final String rules,
      required final String location,
      required final double rate,
      required final RentalCarType rentalCarType,
      final int numberTrip,
      @TimeOfDayConverter() required final TimeOfDay startPickUpTime,
      @TimeOfDayConverter() required final TimeOfDay endPickUpTime,
      @TimeOfDayConverter() required final TimeOfDay startReturnTime,
      @TimeOfDayConverter() required final TimeOfDay endReturnTime,
      final double? deliveryDistance,
      required final double distanceLimit,
      required final double overDistancePrice,
      required final double overTimePrice,
      required final String carOwnerId}) = _$_Car;

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get images;
  @override
  double get price;
  @override
  CarType get carType;
  @override
  String get brand;
  @override
  String get description;
  @override
  String get collateral;
  @override
  String get rules;
  @override
  String get location;
  @override
  double get rate;
  @override
  RentalCarType get rentalCarType;
  @override
  int get numberTrip;
  @override
  @TimeOfDayConverter()
  TimeOfDay get startPickUpTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get endPickUpTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get startReturnTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get endReturnTime;
  @override
  double? get deliveryDistance;
  @override
  double get distanceLimit;
  @override
  double get overDistancePrice;
  @override
  double get overTimePrice;
  @override
  String get carOwnerId;
  @override
  @JsonKey(ignore: true)
  _$$_CarCopyWith<_$_Car> get copyWith => throw _privateConstructorUsedError;
}
