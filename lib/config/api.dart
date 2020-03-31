

class ApiConfig {
  static String _serverUrl = "https://droidcon-api.appslab.tech/v1/";

  static String get serverUrl => _serverUrl;

  static initDebug() {
    // _serverUrl = "http://192.168.100.104/skoolite/api/web/index.php?r=";
    // _serverUrl = "http://192.168.0.100/skoolite/api/web/index.php?r=";
  }
}
