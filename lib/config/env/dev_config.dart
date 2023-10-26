import 'env_config.dart';

final class DevEnvironmentConfig implements EnvironmentConfig {
  @override
  String get baseUrl => const String.fromEnvironment('BEER_API');
  @override
  String get buildMode => const String.fromEnvironment('APP_MODE');
}
