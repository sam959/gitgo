import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitgo/src/inbound/configuration/config_environment_widget.dart';
import 'package:gitgo/src/outbound/api/viewer.data.gql.dart';
import 'package:gitgo/src/outbound/api/viewer.req.gql.dart';
import 'package:gitgo/src/outbound/auth/auth.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';
import 'package:window_to_front/window_to_front.dart';

import '../src/domain/github_summary.dart';
import 'inbound/configuration/environment_config.dart';

class MyApp extends StatelessWidget {
  final EnvironmentConfig config;
  final AuthenticationRepository authenticationRepository;

  const MyApp({@required this.config, @required this.authenticationRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitGo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EnvironmentConfigWidget(config: config, child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState(title: "GitGo Dashboard");
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
