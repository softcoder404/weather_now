import 'dart:developer';

import 'package:flutter/material.dart';

class ScreenViewObserver extends RouteObserver {
  void _sendScreenView(PageRoute<dynamic> route) {
    final String? screenName = route.settings.name;

    if (screenName != null) {
      log('Page: $screenName');
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute);
    }
  }
}
