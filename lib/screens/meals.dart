import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {

  const MealsScreen({super.key, required this.meals});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(meals[index].title);
        },
        itemCount: meals.length,
      ),
    );
  }
}
