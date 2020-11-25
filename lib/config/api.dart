class ApiConfig {
  static String _serverUrl = 'https://api.droidcon.co.ke/v1/';
  static String _eventSlug = 'droidconke2021-957';

  static String get serverUrl => _serverUrl;

  static String get eventSlug => _eventSlug;

  static void initDebug() {
    // _serverUrl = "http://192.168.100.104/skoolite/api/web/index.php?r=";
    // _serverUrl = "http://192.168.0.100/skoolite/api/web/index.php?r=";
  }
}
