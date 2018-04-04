import 'package:flutter/material.dart';
import 'package:untitled1/ui/splash.dart';
import 'package:untitled1/ui/await_load.dart';

void main() {
  runApp(new MaterialApp(
      home: new SplashWidget(),
      routes: <String, WidgetBuilder>{
        "/await_load": (BuildContext context) => new AwaitWidget()
      }));
}
