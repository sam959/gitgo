import 'dart:convert';

import 'package:flutter/services.dart';

class EnvironmentConfig {
  final Map<String, String> environment;

  EnvironmentConfig({this.environment});

  static Future<EnvironmentConfig> forEnvironment(String env) async {
    env = env ?? 'dev';

    final contents = await rootBundle.loadString(
      'assets/config/$env.json',
    );

    final Map<String, String> json = Map.castFrom(jsonDecode(contents));
    return EnvironmentConfig(environment: json);
  }
}
