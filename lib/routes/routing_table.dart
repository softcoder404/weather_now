import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/presentation/screens/weather_home_screen.dart';

class CustomPageRoute {
  static MaterialPageRoute<dynamic> buildMaterialPage(
      {String? name, Object? arguments, required Widget page}) {
    return MaterialPageRoute(
      builder: (context) => page,
      settings: RouteSettings(name: name, arguments: arguments),
    );
  }
}

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PathConstants.home:
        return CustomPageRoute.buildMaterialPage(
            page: const WeatherHomeScreen());
      default:
        return CustomPageRoute.buildMaterialPage(
            page: const WeatherHomeScreen());
    }
  }
}

class PathConstants {
  const PathConstants._();
  static const String home = '/';
}
