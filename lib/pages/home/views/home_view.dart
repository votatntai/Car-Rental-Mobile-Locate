import 'package:car_rental_locate/app/bloc/app_bloc.dart';
import 'package:car_rental_locate/commons/constants/sizes.dart';
import 'package:car_rental_locate/commons/widgets/app_app_bar.dart';
import 'package:car_rental_locate/commons/widgets/loading_widget.dart';
import 'package:car_rental_locate/pages/home/bloc/home_bloc.dart';
import 'package:car_rental_locate/pages/home/widgets/car_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);
        if (successState == null) return;

        context.read<AppBloc>().add(
              AppEvent.carIdChanged(
                successState.selectedCar?.id,
              ),
            );
      },
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }
        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Trang chủ',
            leading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (successState.selectedCar != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Theo dõi vị trí cho xe',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s08),
                        child: CarItem(
                          car: successState.selectedCar!,
                          onTap: (carId) {
                            showDialog<bool>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text(
                                  'Xe này sẽ không được theo dõi',
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, false),
                                    child: const Text('Huỷ'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, true),
                                    child: const Text('Đồng ý'),
                                  ),
                                ],
                              ),
                            ).then((value) {
                              if (value == true) {
                                context.read<HomeBloc>().add(
                                      HomeEvent.carUnselected(carId),
                                    );
                              }
                            });
                          },
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Xe chưa được theo dõi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ...successState.availableCars.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarItem(
                      car: e,
                      onTap: (carId) {
                        showDialog<bool>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Xe này sẽ được theo dõi'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Huỷ'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Đồng ý'),
                              ),
                            ],
                          ),
                        ).then((value) {
                          if (value == true) {
                            context.read<HomeBloc>().add(
                                  HomeEvent.carSelected(carId),
                                );
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
