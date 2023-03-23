import 'package:car_rental_locate/app/bloc/app_bloc.dart';
import 'package:car_rental_locate/app/bloc/authentication_bloc.dart';
import 'package:car_rental_locate/app/views/app_view.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: AuthenticationBloc(
            authenticationRepository: getIt.get<AuthenticationRepository>(),
          ),
        ),
        BlocProvider.value(
          value: AppBloc(),
        ),
      ],
      child: const AppView(),
    );
  }
}
