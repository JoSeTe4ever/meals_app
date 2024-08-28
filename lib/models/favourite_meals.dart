import 'package:flutter/material.dart';

import 'meal.dart';

class FavouriteMeals extends ChangeNotifier {
  final List<Meal> _favouriteMeals = [];

  void addFavouriteMeal(Meal meal) {
    _favouriteMeals.add(meal);
    notifyListeners();
  }

  void removeFavouriteMeal(Meal meal) {
    _favouriteMeals.remove(meal);
    notifyListeners();
  }

  get favouriteMeals => _favouriteMeals;

}