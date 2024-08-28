import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Your Favourites'),
      ),
    );
  }
}
