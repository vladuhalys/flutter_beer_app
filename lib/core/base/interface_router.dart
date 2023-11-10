import 'package:flutter/material.dart';

abstract interface class IRouter {
  String get initialRoute;
  Map<String, WidgetBuilder> get routes;
}
