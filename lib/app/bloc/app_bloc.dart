import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.location,
  }) : super(const AppState()) {
    on<_Started>(_onStarted);
    on<_CarIdChanged>(_onCarIdChanged);

    location.onLocationChanged.listen((event) {
      print('$event - $carId');
    });
  }

  final Location location;

  String? carId;

  FutureOr<void> _onCarIdChanged(
    _CarIdChanged event,
    Emitter<AppState> emit,
  ) {
    carId = event.carId;
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AppState> emit,
  ) {}
}
