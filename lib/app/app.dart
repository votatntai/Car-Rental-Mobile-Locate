import 'package:car_rental_locate/app/bloc/app_bloc.dart';
import 'package:car_rental_locate/app/bloc/authentication_bloc.dart';
import 'package:car_rental_locate/app/views/app_view.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/repositories/authentication_repository.dart';
import 'package:car_rental_locate/repositories/car_owner_repository.dart';
import 'package:car_rental_locate/repositories/tracking_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: AuthenticationBloc(
            authenticationRepository: getIt.get<AuthenticationRepository>(),
            carOwnerRepository: getIt.get<CarOwnerRepository>(),
          ),
        ),
        BlocProvider.value(
          value: AppBloc(
            location: getIt.get<Location>(),
            trackingRepository: getIt.get<TrackingRepository>(),
          ),
        ),
      ],
      child: const AppView(),
    );
  }
}
