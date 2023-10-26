import 'env_config.dart';

final class ProfileEnvironmentConfig implements EnvironmentConfig {
  @override
  String get baseUrl => const String.fromEnvironment('BEER_API');
  @override
  String get buildMode => const String.fromEnvironment('APP_MODE');
}
