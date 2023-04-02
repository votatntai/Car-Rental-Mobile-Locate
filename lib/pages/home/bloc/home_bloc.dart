import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_locate/models/api_response.dart';
import 'package:car_rental_locate/models/car.dart';
import 'package:car_rental_locate/models/pagination_result.dart';
import 'package:car_rental_locate/repositories/car_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.carRepository,
  }) : super(const HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_CarSelected>(_onCarSelected);
    on<_CarUnselected>(_onCarUnselected);
  }

  final CarRepository carRepository;

  @override
  Future<void> close() {
    return super.close();
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    // emit(const HomeState.loading());

    final availableCarsResult = await carRepository.carsIsNotTracking(
      pageNumber: 1,
      pageSize: 100000,
    );

    if (availableCarsResult is ApiError) {
      emit(const HomeState.failure(message: 'Lỗi không xác định'));
      return;
    }

    final availableCars = (availableCarsResult as ApiSuccess<List<Car>>).value;

    final selectedCarResult = await carRepository.selectedCar();
    if (selectedCarResult is ApiError) {
      emit(const HomeState.failure(message: 'Lỗi không xác định'));
      return;
    }

    final selectedCar = (selectedCarResult as ApiSuccess<Car?>).value;

    emit(
      HomeState.success(
        availableCars: availableCars,
        selectedCar: selectedCar,
      ),
    );
  }

  FutureOr<void> _onCarSelected(
    _CarSelected event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Success) return;

    await carRepository.trackingCar(event.carId);
    add(const _Started());
  }

  FutureOr<void> _onCarUnselected(
    _CarUnselected event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Success) return;

    await carRepository.unTrackingCar(event.carId);
    add(const _Started());
  }
}
