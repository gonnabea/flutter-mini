// import 'package:flutter/material.dart';
// import 'package:toonflix/widgets/Button.dart';
// import 'package:toonflix/widgets/currency_card.dart';

// class Player {
//   String? name;

//   Player({required this.name});
// }

// void main() {
//   var jiwon = Player(name: "jiwon");
//   print(jiwon);
//   runApp(App());
// }

// class App extends StatelessWidget {
//   @override // StatelessWidget 클래스에 있는 build 메소드를 덮어씌우기
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       children: const [
//                         Text('Hey, Selena',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 48,
//                                 fontWeight: FontWeight.w700)),
//                         Text('Welcome back',
//                             style: TextStyle(
//                                 color: Color.fromRGBO(255, 255, 255, 0.8),
//                                 fontSize: 18)),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Container(
//                   child: Text('Total Balance',
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Colors.white.withOpacity(0.8),
//                       )),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Text('\$5 194 482',
//                     style: TextStyle(
//                       fontSize: 42,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white.withOpacity(0.8),
//                     )),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF1B33B),
//                         textColor: Colors.black),
//                     Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white)
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 36,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     Text(
//                       'View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Euro',
//                   code: 'EUR',
//                   amount: '6 428',
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                   offset: [0, 0],
//                 ),
//                 const CurrencyCard(
//                   name: 'Bitcoin',
//                   code: 'BTC',
//                   amount: '9 785',
//                   icon: Icons.currency_bitcoin,
//                   isInverted: true,
//                   offset: [0, -20],
//                 ),
//                 const CurrencyCard(
//                   name: 'Dollar',
//                   code: 'USD',
//                   amount: '428',
//                   icon: Icons.attach_money_outlined,
//                   isInverted: false,
//                   offset: [0, -20],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
      print(numbers);
    });
  }

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        home: Scaffold(
            backgroundColor: const Color(0xFFF4EDDB),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showTitle ? const MyLargeTitle() : const Text('nothing'),
                    IconButton(
                        onPressed: toggleTitle,
                        icon: const Icon(Icons.remove_red_eye))
                  ]),
            )));
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text('My Large Title',
        style: TextStyle(
          fontSize: 30,
          color: Theme.of(context).textTheme.titleLarge?.color,
        ));
  }
}
