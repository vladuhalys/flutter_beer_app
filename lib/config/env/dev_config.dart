import '../../core/base/env_config.dart';

final class DevEnvironmentConfig implements EnvironmentConfig {
  static String get baseUrl => const String.fromEnvironment('BEER_API_DEV');
}
