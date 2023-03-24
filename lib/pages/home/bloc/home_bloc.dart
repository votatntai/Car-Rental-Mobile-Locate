import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_locate/models/car.dart';
import 'package:car_rental_locate/pages/home/car_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_CarSelected>(_onCarSelected);
    on<_CarUnselected>(_onCarUnselected);
  }

  @override
  Future<void> close() {
    return super.close();
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    emit(
      HomeState.success(
        availableCars: carMock,
        selectedCar: carMock[0],
      ),
    );
  }

  FutureOr<void> _onCarSelected(
    _CarSelected event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    final selectedCar = currentState.availableCars
        .firstWhere((element) => element.id == event.carId);

    emit(
      currentState.copyWith(selectedCar: selectedCar),
    );
  }

  FutureOr<void> _onCarUnselected(
    _CarUnselected event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;

    emit(
      currentState.copyWith(
        selectedCar: null,
      ),
    );
  }
}
