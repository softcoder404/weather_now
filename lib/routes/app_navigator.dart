import 'package:flutter/material.dart';
import 'package:weather_app/routes/routing_table.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  ///push to route name
  static Future<void> push(String routeName, {Object? arguments}) async {
    await navKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static Future<void> pushToPage(Widget page,
      {Object? arguments, String? name}) async {
    await navKey.currentState?.push(
      CustomPageRoute.buildMaterialPage(
        page: page,
        arguments: arguments,
        name: name,
      ),
    );
  }

  ///push to new route and remove previous route until root root
  static Future<void> pushNamedAndRemoveUntil(
    String newRouteName, {
    String? untilRouteName,
    Object? arguments,
  }) async {
    await navKey.currentState?.pushNamedAndRemoveUntil(
      newRouteName,
      ModalRoute.withName(untilRouteName ?? '/'),
      arguments: arguments,
    );
  }

  /// pop the top route
  static void pop<T extends Object?>([T? result]) {
    navKey.currentState?.pop(T);
  }

  static Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) async {
    return await navKey.currentState
        ?.popAndPushNamed(routeName, result: result, arguments: arguments);
  }
}
