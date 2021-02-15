import 'package:flutter/material.dart';
import 'package:gitgo/inbound/configuration/config_environment_widget.dart';
import 'package:gitgo/outbound/api/viewer.data.gql.dart';
import 'package:gitgo/outbound/api/viewer.req.gql.dart';
import 'package:gitgo/outbound/auth/auth.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';
import 'package:window_to_front/window_to_front.dart';

import 'domain/github_summary.dart';
import 'inbound/configuration/environment_config.dart';

Future main(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = await EnvironmentConfig.forEnvironment(env);
  print("starting app in $env mode");
  runApp(MyApp(config));
}

class MyApp extends StatelessWidget {
  final EnvironmentConfig config;

  MyApp(this.config);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitGo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EnvironmentConfigWidget(
          config: config, child: MyHomePage(title: 'GitGo Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState(title: "GitHub login");
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState({this.title});

  EnvironmentConfigWidget environmentConfigWidget;

  String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
        builder: (context, client) {
          WindowToFront.activate();
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: GitHubSummary(client: client),
          );
        },
        githubClientId: EnvironmentConfigWidget.of(context)
            .config
            .environment['githubClientId'],
        githubClientSecret: EnvironmentConfigWidget.of(context)
            .config
            .environment['githubClientSecret'],
        githubScopes: EnvironmentConfigWidget.of(context)
            .config
            .environment['githubScopes']
            .split(","));
  }
}

Future<$ViewerDetail$viewer> viewerDetail(Link link) async {
  var result = await link.request(ViewerDetail((b) => b)).first;
  if (result.errors != null && result.errors.isNotEmpty) {
    throw QueryException(result.errors);
  }
  return $ViewerDetail(result.data).viewer;
}

class QueryException implements Exception {
  QueryException(this.errors);

  List<GraphQLError> errors;

  @override
  String toString() {
    return 'Query Exception: ${errors.map((err) => '$err').join(',')}';
  }
}
