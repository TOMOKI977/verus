class AppConfig {
  // Nombre de la aplicación
  static const appName = 'Verus Platforms';

  // URL del backend (Serverpod)
  // Se puede sobreescribir con: flutter run --dart-define=SERVER_URL=http://localhost:8080/
  static const serverUrl = String.fromEnvironment(
    'SERVER_URL',
    defaultValue: 'http://localhost:8080/',
  );

  // API Key para mapas (ejemplo)
  static const mapsApiKey = String.fromEnvironment(
    'MAPS_API_KEY',
    defaultValue: '',
  );

  // Versión de la app
  static const appVersion = '1.0.0';

  // Entorno actual (development, staging, production)
  static const environment = String.fromEnvironment(
    'ENV',
    defaultValue: 'development',
  );
}
