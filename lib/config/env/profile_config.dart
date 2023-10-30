import '../../core/base/env_config.dart';

final class ProfileEnvironmentConfig implements EnvironmentConfig {
  static String get baseUrl => const String.fromEnvironment('BEER_API_PROFILE');
}
