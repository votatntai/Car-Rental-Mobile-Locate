import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_locate/app/dio_helper.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/models/car_owner.dart';
import 'package:car_rental_locate/repositories/authentication_repository.dart';
import 'package:car_rental_locate/repositories/car_owner_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
    required this.carOwnerRepository,
  }) : super(const AuthenticationState(status: AuthenticationStatus.unknown)) {
    on<_StatusChangedEvent>(_onStatusChanged);

    // add subscription
    _authenticationStatusSubscription = authenticationRepository.status.listen(
      (status) => add(AuthenticationEvent.statusChanged(status: status)),
    );
  }

  final AuthenticationRepository authenticationRepository;
  final CarOwnerRepository carOwnerRepository;

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() async {
    await _authenticationStatusSubscription.cancel();
    await authenticationRepository.dispose();
    return super.close();
  }

  FutureOr<void> _onStatusChanged(
    _StatusChangedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        //* remove dio config
        getIt.get<DioHelper>().removeDioInterceptors();

        emit(AuthenticationState(status: event.status));
        break;

      case AuthenticationStatus.unknown:
        emit(AuthenticationState(status: event.status));

        break;
      case AuthenticationStatus.authenticated:
        //* config dio
        await getIt.get<DioHelper>().initDioInterceptors();

        final carOwner = await _tryGetUser();
        if (carOwner == null) {
          emit(
            const AuthenticationState(
              status: AuthenticationStatus.unauthenticated,
            ),
          );
          return;
        }
        emit(AuthenticationState(
          status: event.status,
          carOwner: carOwner,
        ));
        break;
    }
  }

  Future<CarOwner?> _tryGetUser() async {
    try {
      final user = await carOwnerRepository.getProfile();
      return user;
    } catch (_) {
      return null;
    }
  }
}
