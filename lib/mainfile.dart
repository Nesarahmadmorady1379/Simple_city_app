import 'package:assignement_11_app/about.dart';
import 'package:assignement_11_app/cities.dart';
import 'package:assignement_11_app/home.dart';
import 'package:assignement_11_app/information.dart';
import 'package:assignement_11_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => splashscreen(),
      '/home': (context) => Mainpage(),
      '/about': (context) => about(),
    },
    onGenerateRoute: (RouteSettings settings) {
      if (settings.name == '/information') {
        final City cityData = settings.arguments as City;
        return MaterialPageRoute(
          builder: (context) => information(cityData: cityData),
        );
      }
      return null; // Return null for unknown routes
    },
  ));
}