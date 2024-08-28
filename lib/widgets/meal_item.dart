import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/meal.dart';
import 'like_heart.dart';

class MealItem extends StatelessWidget {

  const MealItem({super.key, required this.meal, required this.onItemPressed});

  final Meal meal;

  final Function() onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl)),
            LikeHeartButton(onPressed: onItemPressed)
          ],
        ),
      ),
    );
  }
}
