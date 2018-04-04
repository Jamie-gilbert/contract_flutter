import 'package:flutter/material.dart';

class AwaitWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AwaitState();
  }
}

class AwaitState extends State<AwaitWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new CircularProgressIndicator(),
      ),
      backgroundColor: Colors.transparent
    );
  }
}
