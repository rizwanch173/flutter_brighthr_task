import 'dart:io' show Platform;

enum Environment {
  development,
  staging,
  production;

  static Environment fromString(String value) {
    switch (value.toLowerCase()) {
      case 'development':
        return Environment.development;
      case 'staging':
        return Environment.staging;
      case 'production':
        return Environment.production;
      default:
        throw Exception('Unknown environment: $value');
    }
  }
}

class Config {
  Config._();

  static const _environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'development',
  );

  static const _apiUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: 'https://jsonplaceholder.typicode.com/',
  );
  static final Environment environment = Environment.fromString(_environment);

  static String get apiUrl => _apiUrl;

  static bool get isDevelopment => environment == Environment.development;
  static bool get isStaging => environment == Environment.staging;
  static bool get isProduction => environment == Environment.production;
}
