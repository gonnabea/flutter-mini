import 'package:flutter/material.dart';

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  var jiwon = Player(name: "jiwon");
  print(jiwon);
  runApp(App());
}

class App extends StatelessWidget {
  @override // StatelessWidget 클래스에 있는 build 메소드를 덮어씌우기
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text('Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w700)),
                    Text('Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(1),
                          fontSize: 18
                        )
                    ),
                  ],
                )
              ],
            )
          ],
        ),),
      ),
    );
  }
}
