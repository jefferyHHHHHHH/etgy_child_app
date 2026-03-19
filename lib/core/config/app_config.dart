enum AppFlavor { dev, prod }

class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.apiBaseUrl,
    required this.agoraAppId,
    required this.enableNetworkLog,
  });

  final AppFlavor flavor;
  final String apiBaseUrl;
  final String agoraAppId;
  final bool enableNetworkLog;

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;

  static AppConfig fromEnvironment() {
    const env = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
    const baseUrl = String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: 'https://dev-api.example.com',
    );
    const agoraAppId = String.fromEnvironment('AGORA_APP_ID', defaultValue: '');
    const enableLog = bool.fromEnvironment('ENABLE_NETWORK_LOG', defaultValue: true);

    final flavor = env.toLowerCase() == 'prod' ? AppFlavor.prod : AppFlavor.dev;

    return AppConfig(
      flavor: flavor,
      apiBaseUrl: baseUrl,
      agoraAppId: agoraAppId,
      enableNetworkLog: enableLog,
    );
  }
}
