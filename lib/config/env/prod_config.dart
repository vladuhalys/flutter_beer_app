import '../../core/base/env_config.dart';

final class ProdEnvironmentConfig implements EnvironmentConfig {
  static String get baseUrl => const String.fromEnvironment('BEER_API_PROD');
}
