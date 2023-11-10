import 'package:flutter/material.dart';
import 'package:flutter_beer_app/core/base/interface_router.dart';

final class Router implements IRouter {
  @override
  String get initialRoute => '/home';

  @override
  Map<String, WidgetBuilder> get routes => {
        // '/home': (context) => const HomeScreen(),
        // '/about': (context) => const AboutScreen(),
      };
}
