import 'package:flutter_beer_app/config/env/dev_config.dart';
import 'package:flutter_beer_app/config/env/prod_config.dart';
import 'package:flutter_beer_app/config/env/stage_config.dart';
import 'package:flutter_beer_app/core/base/env_config.dart';

final class ApplicationConfig {
  static const _dev = 'DEV';
  static const _prod = 'PROD';
  static const _stage = 'SATGE';

  static EnvironmentConfig get environmentConfig {
    const envString = String.fromEnvironment('APP_MODE');
    switch (envString) {
      case _dev:
        return DevEnvironmentConfig();
      case _stage:
        return StageEnvironmentConfig();
      case _prod:
        return ProdEnvironmentConfig();
      default:
        return DevEnvironmentConfig();
    }
  }
}
