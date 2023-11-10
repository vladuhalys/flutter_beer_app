import 'package:flutter_beer_app/config/env/env_enum.dart';

abstract interface class EnvironmentConfig {
  String get baseUrl;
  EnvFlavors get env;
  bool get isDev;
}
