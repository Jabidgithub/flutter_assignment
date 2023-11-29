import 'package:flutter/material.dart';
import 'package:flutter_surprise_test/app/screens/home_screen.dart';
import 'package:flutter_surprise_test/app/screens/home_two_screen.dart';

class Routes {
  static const String homeRoute = "/homeRoute";
  static const String homeTwoRoute = "/homeTwoRoute";
  static const String locationRoute = "/locationRoute";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case Routes.homeTwoRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreenTwo());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for'),
            ),
          ),
        );
    }
  }
}
