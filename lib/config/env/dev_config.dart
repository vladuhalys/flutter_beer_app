import 'package:flutter_beer_app/config/env/env_enum.dart';

import '../../core/base/env_config.dart';

final class DevEnvironmentConfig implements EnvironmentConfig {
  @override
  String get baseUrl => 'https://api.punkapi.com/v2/beers';

  @override
  EnvFlavors get env => EnvFlavors.dev;

  @override
  bool get isDev => true;

  @override
  String get supabaseKey => const String.fromEnvironment('SUPABASE_URL');

  @override
  String get supabaseUrl => const String.fromEnvironment('SUPABASE_KEY');
}
