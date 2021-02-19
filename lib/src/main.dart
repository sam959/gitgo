import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import '../src/inbound/configuration/environment_config.dart';
import 'app.dart';

Future main(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = await EnvironmentConfig.forEnvironment(env);
  print("starting app in $env mode");
  runApp(MyApp(
      authenticationRepository: AuthenticationRepository(),
      config: config));
}
