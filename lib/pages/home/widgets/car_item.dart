import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_locate/commons/constants/colors.dart';
import 'package:car_rental_locate/commons/constants/sizes.dart';
import 'package:car_rental_locate/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarItem extends StatelessWidget {
  const CarItem({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final Function(String id) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(car.id),
      child: SizedBox(
        height: 250,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
                imageUrl: car.images.first,
              ),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Text(
                  car.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
