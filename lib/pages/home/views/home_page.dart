import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/pages/home/bloc/home_bloc.dart';
import 'package:car_rental_locate/pages/home/views/home_view.dart';
import 'package:car_rental_locate/repositories/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeBloc(
        carRepository: getIt.get<CarRepository>(),
      )..add(
          const HomeEvent.started(),
        ),
      child: const HomeView(),
    );
  }
}
