import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_locate/repositories/tracking_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import 'package:signalr_netcore/signalr_client.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.location,
    required this.trackingRepository,
  }) : super(const AppState()) {
    on<_Started>(_onStarted);
    on<_CarIdChanged>(_onCarIdChanged);
    on<_LocationSend>(_onLocationSend);

    location.onLocationChanged.listen((event) {
      // print('$event - $carId');

      if (carId == null || event.latitude == null || event.longitude == null) {
        return;
      }
      add(_LocationSend(
        carId: carId!,
        latitude: event.latitude!,
        longitude: event.longitude!,
      ));
    });

    // trackingRepository.connection.on('ReceiveLocation', (arguments) {
    //   print(arguments.toString());
    // });
  }

  final Location location;
  final TrackingRepository trackingRepository;

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

  FutureOr<void> _onLocationSend(
    _LocationSend event,
    Emitter<AppState> emit,
  ) async {
    if (trackingRepository.connection.state == HubConnectionState.Connected) {
      await trackingRepository.connection.invoke(
        'SendLocation',
        args: <Object>[
          {
            'latitude': event.latitude,
            'longitude': event.longitude,
            'carId': event.carId,
          }
        ],
      );
    }
  }
}
