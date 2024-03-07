import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:meals/models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({required this.meal, super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}
