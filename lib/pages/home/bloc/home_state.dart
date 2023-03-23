part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({
    required List<Car> availableCars,
    Car? selectedCar,
  }) = _Success;
  const factory HomeState.failure({required String message}) = _Failure;
}
