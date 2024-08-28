import 'package:flutter/material.dart';
import 'package:meals_app/models/favourite_meals.dart';
import 'package:provider/provider.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  // retrieve favourite meals from provider
  // and display them in a list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favourites'),
      ),
      body: Column(
        children: [
          Text('Your Favourites'),
          Consumer<FavouriteMeals>(builder: (context, value, child) {
            if (value.favouriteMeals.isEmpty) {
              return const Center(
                child: Column(
                  children: [
                    Text('Empty list',
                        style: const TextStyle(color: Colors.white)),
                    SizedBox(height: 12)
                  ],
                ),
              );
            } else {
              return Expanded( // search in internet or ask chatgpt why list must be inside Expanded and can not return the list itself.
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text(value.favouriteMeals[index].title,
                          style: const TextStyle(color: Colors.white)),
                    );
                  },
                  itemCount: value.favouriteMeals.length,
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
