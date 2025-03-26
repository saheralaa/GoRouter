import 'package:firstproject/config/app_routes.dart';
import 'package:firstproject/layout/main_screen.dart';
import 'package:firstproject/screens/category_screen.dart';
import 'package:firstproject/screens/details_screen.dart';
import 'package:firstproject/screens/home_screen.dart';
import 'package:firstproject/screens/menu_screen.dart';
import 'package:firstproject/screens/settings.dart';
import 'package:firstproject/screens/shell_example_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true, //Todo: Enable logging for debugging navigation
    initialLocation: AppRoutes.homeScreen, //Todo: Set the initial route
    errorBuilder: (context, state) =>
        CategoryScreen(), //Todo :  Handle unknown routes
    routes: [
      //Todo: Stateful Shell Route (for Bottom Navigation Bar or similar structures)
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) {
          //Todo: The body of the ShellRoute is the child widget because it is the parent of all routes and it wraps all the routes
          //Todo: The child widget is the route that is currently active
          return MainScreen(
              child:
                  child); //Todo: The main layout containing a bottom navigation bar
        },
        branches: [
          //Todo: // First tab (Home)
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(),
            routes: [
              GoRoute(
                path: AppRoutes.homeScreen,
                name: 'home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          //Todo: Second tab (Menu) with Nested Navigation
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.menuScreen,
                name: 'menu',
                builder: (context, state) => const MenuScreen(),
                redirect: (context, state) {
                  final bool isRedirected = true;
                  if (isRedirected) {
                    return '/nestedcategory'; // Redirect to a nested route
                  }
                },
                routes: [
                  //Todo: Nested Navigation Example
                  GoRoute(
                    path: '/nestedcategory',
                    name: 'nestedcategory',
                    builder: (context, state) => const CategoryScreen(),
                  ),
                ],
              ),
            ],
          ),
          //Todo:  Third tab (Settings)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.settingsScreen,
                name: 'setting',
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
      //Todo: Example of Dynamic Route (Product Details Page)
      GoRoute(
        path: '/details/:productId',
        name: AppRoutes.detailsScreen,
        builder: (context, state) {
          final productId = state.pathParameters['productId'] ?? "";
          return DetailsScreen(productId: productId);
        },
      ),
      //Todo: Shell Route Example (Used for wrapping pages with a persistent UI and defined Bloc up the ShellRoute because it is the parent of all routes)
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            appBar: AppBar(title: Text('Shell Route Example')),
            //Todo: The body of the ShellRoute is the child widget because it is the parent of all routes and it wraps all the routes
            //Todo: The child widget is the route that is currently active
            body: child,
          );
        },
        routes: [
          GoRoute(
            path: '/shell-example',
            name: 'shellExample',
            builder: (context, state) => ShellExampleScreen(),
          ),
          GoRoute(
            path: '/shell-example',
            name: 'shellExample',
            builder: (context, state) => ShellExampleScreen(),
          ),
        ],
      ),
    ],
  );
}
