import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override // StatelessWidget 클래스에 있는 build 메소드를 덮어씌우기
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello flutter!')),
        body: Center(child: Text('Hello world!')),
      ),
    );
  }
}
