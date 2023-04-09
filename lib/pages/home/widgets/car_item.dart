import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_locate/commons/constants/images.dart';
import 'package:car_rental_locate/commons/constants/sizes.dart';
import 'package:car_rental_locate/models/car.dart';
import 'package:flutter/material.dart';

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
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            car.images?.isNotEmpty == true
                ? CachedNetworkImage(
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    imageUrl: car.images!.first.url,
                  )
                : const Image(
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Images.carExample,
                    ),
                  ),
            const SizedBox(height: s16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: s08),
              child: Text(
                car.name ?? '',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
