// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? carId) carIdChanged,
    required TResult Function(String carId, double latitude, double longitude)
        locationSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? carId)? carIdChanged,
    TResult? Function(String carId, double latitude, double longitude)?
        locationSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? carId)? carIdChanged,
    TResult Function(String carId, double latitude, double longitude)?
        locationSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarIdChanged value) carIdChanged,
    required TResult Function(_LocationSend value) locationSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarIdChanged value)? carIdChanged,
    TResult? Function(_LocationSend value)? locationSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarIdChanged value)? carIdChanged,
    TResult Function(_LocationSend value)? locationSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? carId) carIdChanged,
    required TResult Function(String carId, double latitude, double longitude)
        locationSend,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? carId)? carIdChanged,
    TResult? Function(String carId, double latitude, double longitude)?
        locationSend,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? carId)? carIdChanged,
    TResult Function(String carId, double latitude, double longitude)?
        locationSend,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarIdChanged value) carIdChanged,
    required TResult Function(_LocationSend value) locationSend,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarIdChanged value)? carIdChanged,
    TResult? Function(_LocationSend value)? locationSend,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarIdChanged value)? carIdChanged,
    TResult Function(_LocationSend value)? locationSend,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CarIdChangedCopyWith<$Res> {
  factory _$$_CarIdChangedCopyWith(
          _$_CarIdChanged value, $Res Function(_$_CarIdChanged) then) =
      __$$_CarIdChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? carId});
}

/// @nodoc
class __$$_CarIdChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_CarIdChanged>
    implements _$$_CarIdChangedCopyWith<$Res> {
  __$$_CarIdChangedCopyWithImpl(
      _$_CarIdChanged _value, $Res Function(_$_CarIdChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
  }) {
    return _then(_$_CarIdChanged(
      freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CarIdChanged implements _CarIdChanged {
  const _$_CarIdChanged(this.carId);

  @override
  final String? carId;

  @override
  String toString() {
    return 'AppEvent.carIdChanged(carId: $carId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarIdChanged &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarIdChangedCopyWith<_$_CarIdChanged> get copyWith =>
      __$$_CarIdChangedCopyWithImpl<_$_CarIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? carId) carIdChanged,
    required TResult Function(String carId, double latitude, double longitude)
        locationSend,
  }) {
    return carIdChanged(carId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? carId)? carIdChanged,
    TResult? Function(String carId, double latitude, double longitude)?
        locationSend,
  }) {
    return carIdChanged?.call(carId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? carId)? carIdChanged,
    TResult Function(String carId, double latitude, double longitude)?
        locationSend,
    required TResult orElse(),
  }) {
    if (carIdChanged != null) {
      return carIdChanged(carId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarIdChanged value) carIdChanged,
    required TResult Function(_LocationSend value) locationSend,
  }) {
    return carIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarIdChanged value)? carIdChanged,
    TResult? Function(_LocationSend value)? locationSend,
  }) {
    return carIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarIdChanged value)? carIdChanged,
    TResult Function(_LocationSend value)? locationSend,
    required TResult orElse(),
  }) {
    if (carIdChanged != null) {
      return carIdChanged(this);
    }
    return orElse();
  }
}

abstract class _CarIdChanged implements AppEvent {
  const factory _CarIdChanged(final String? carId) = _$_CarIdChanged;

  String? get carId;
  @JsonKey(ignore: true)
  _$$_CarIdChangedCopyWith<_$_CarIdChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationSendCopyWith<$Res> {
  factory _$$_LocationSendCopyWith(
          _$_LocationSend value, $Res Function(_$_LocationSend) then) =
      __$$_LocationSendCopyWithImpl<$Res>;
  @useResult
  $Res call({String carId, double latitude, double longitude});
}

/// @nodoc
class __$$_LocationSendCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_LocationSend>
    implements _$$_LocationSendCopyWith<$Res> {
  __$$_LocationSendCopyWithImpl(
      _$_LocationSend _value, $Res Function(_$_LocationSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_LocationSend(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LocationSend implements _LocationSend {
  const _$_LocationSend(
      {required this.carId, required this.latitude, required this.longitude});

  @override
  final String carId;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'AppEvent.locationSend(carId: $carId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationSend &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationSendCopyWith<_$_LocationSend> get copyWith =>
      __$$_LocationSendCopyWithImpl<_$_LocationSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? carId) carIdChanged,
    required TResult Function(String carId, double latitude, double longitude)
        locationSend,
  }) {
    return locationSend(carId, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? carId)? carIdChanged,
    TResult? Function(String carId, double latitude, double longitude)?
        locationSend,
  }) {
    return locationSend?.call(carId, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? carId)? carIdChanged,
    TResult Function(String carId, double latitude, double longitude)?
        locationSend,
    required TResult orElse(),
  }) {
    if (locationSend != null) {
      return locationSend(carId, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarIdChanged value) carIdChanged,
    required TResult Function(_LocationSend value) locationSend,
  }) {
    return locationSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarIdChanged value)? carIdChanged,
    TResult? Function(_LocationSend value)? locationSend,
  }) {
    return locationSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarIdChanged value)? carIdChanged,
    TResult Function(_LocationSend value)? locationSend,
    required TResult orElse(),
  }) {
    if (locationSend != null) {
      return locationSend(this);
    }
    return orElse();
  }
}

abstract class _LocationSend implements AppEvent {
  const factory _LocationSend(
      {required final String carId,
      required final double latitude,
      required final double longitude}) = _$_LocationSend;

  String get carId;
  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  _$$_LocationSendCopyWith<_$_LocationSend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState();

  @override
  String toString() {
    return 'AppState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppState implements AppState {
  const factory _AppState() = _$_AppState;
}
