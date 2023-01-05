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
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Text('Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w700)),
                      Text('Welcome back',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 18)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                )
              ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                )
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45)
                    ),
                    child: 
                    const Padding(padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 50,
                    ),
                    child: Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                    )
                    
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
