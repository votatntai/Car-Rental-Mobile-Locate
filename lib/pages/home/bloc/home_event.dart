part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.carSelected(String carId) = _CarSelected;
  const factory HomeEvent.carUnselected(String carId) = _CarUnselected;
}
