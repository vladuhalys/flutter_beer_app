import 'package:flutter_beer_app/config/env/env_enum.dart';

import '../../core/base/env_config.dart';

final class StageEnvironmentConfig implements EnvironmentConfig {
  @override
  String get baseUrl => 'https://api.punkapi.com/v2/beers';

  @override
  EnvFlavors get env => EnvFlavors.stage;

  @override
  bool get isDev => false;
}
