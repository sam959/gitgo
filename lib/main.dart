import 'package:flutter/material.dart';
import 'package:gitgo/outbound/const.dart';
import 'outbound/auth.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitGo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GitGo Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState("GitHub login");
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
        builder: (context, httpClient) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Text(
                'You are logged into GitHub!',
              ),
            ),
          );
        },
        githubClientId: githubClientId,
        githubClientSecret: githubClientSecret,
        githubScopes: githubScopes);
  }
}
