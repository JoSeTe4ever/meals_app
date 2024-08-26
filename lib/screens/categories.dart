import 'package:flutter/material.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/models/category.dart';
import '../data/dummy_data.dart';
import '../widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    // context is not available out-of-the-box in StatlessWIdgets
    final currentMeals =
        dummyMeals.where((meal) => meal.categories.contains(category.id));
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => MealsScreen(
                meals: currentMeals.toList(),
                title: 'test'))); // Navigator.of(context).push(route);
  }

  //usually in a multi-screen app, you would have a different scaffold for each widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pick up your category!'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            // ...availableCategories.map((category) => CategoryGridItem(category: category)).toList(), ESTA FUNCIONA
            for (final category in availableCategories)
              CategoryGridItem(
                category: category,
                onSelectCategory: () => {_selectCategory(context, category)},
              )
          ],
        ));
  }
}
