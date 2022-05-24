import 'package:flutter/material.dart';

void main() => runApp(myApp());

class MyApp extends statelessWidget {
  @override
  Widget build(BuildContext context) {
    return Materialapp(
      title: "Welcom to Flutter",
      home: Scaffold(
        appBar:AppBar(
          title: Text("Flutter bar"),
        ),
        body: Center(
          child: Text("Hello Ricky"),
        ),
      ),
    );
  }
}
