import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled1/net/net_untils.dart';

class SplashWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SplashState splashState = new SplashState();

    //getData();
    return splashState;
  }

  //更新数据库
  void updateLocalData(Map<String, dynamic> value) {}

//更新数据
  void getData() {
    Future<Map<String, dynamic>> data = load("");
    data.then((v) {
      updateLocalData(v);
    }).whenComplete(() {});
  }
}

class SplashState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
        body: new Container(
            decoration: new BoxDecoration(
                color: const Color.fromARGB(247, 247, 247, 247)),
            padding: new EdgeInsets.all(20.0),
            child: new Align(
                alignment: FractionalOffset.topCenter,
                child: new Image(image: new AssetImage("images/splash.jpg")))));

    Navigator.of(context).pushNamed("/await_load");
    return scaffold;
  }
}
