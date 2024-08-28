import 'package:flutter/material.dart';
import 'package:meals_app/models/favourite_meals.dart';
import 'package:provider/provider.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.meals, required this.title});

  final List<Meal> meals;
  final String title;

  void _onItemPressed(BuildContext context, int index) {
    // add meal to favourites and show snackbar.
    Provider.of<FavouriteMeals>(context, listen: false)
        .addFavouriteMeal(meals[index]);

    final snackBar = SnackBar(
      content: const Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty) {
      return const Center(
        child: Column(
          children: [Text('Empty list'), SizedBox(height: 12)],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              meal: meals[index],
              onItemPressed: () => _onItemPressed(context, index));
        },
        itemCount: meals.length,
      ),
    );
  }
}
