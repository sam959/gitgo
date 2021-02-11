import 'package:flutter/cupertino.dart';
import 'package:gitgo/inbound/configuration/environment_config.dart';

class EnvironmentConfigWidget extends InheritedWidget {
  final EnvironmentConfig config;

  EnvironmentConfigWidget({ Key key, Widget child, this.config}) :super(key: key, child: child);

  @override
  bool updateShouldNotify(EnvironmentConfigWidget oldWidget) => oldWidget.config != config;


  static EnvironmentConfigWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EnvironmentConfigWidget>();
  }

}