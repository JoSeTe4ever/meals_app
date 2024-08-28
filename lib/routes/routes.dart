import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/screens/favourites.dart';
import '../screens/categories.dart';

final GoRouter appRouterConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const CategoriesScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'favourites',
          builder: (BuildContext context, GoRouterState state) {
            return const FavouritesScreen();
          },
        ),
      ],
    ),
  ],
);