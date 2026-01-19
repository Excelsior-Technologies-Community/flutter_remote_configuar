class RemoteConfig {
  final Map<String, dynamic> _configs;

  RemoteConfig({required Map<String, dynamic> initialConfig})
    : _configs = initialConfig;

  String getString(String key, {String defaultValue = ''}) {
    return _configs[key] ?? defaultValue;
  }

  int getInt(String key, {int defaultValue = 0}) {
    return _configs[key] ?? defaultValue;
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return _configs[key] ?? defaultValue;
  }

  void updateConfig(Map<String, dynamic> newConfig) {
    _configs.addAll(newConfig);
  }
}
