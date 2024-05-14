import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String name;

  Player(this.name);
}

void main() {
  var nico = Player('nico');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // 모든 Widget은 build 메소드를 구현해야한다.
  @override
  Widget build(BuildContext context) {
    // material(구글) 또는 cupertino(ios) 스타일 위젯
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:
                // Row는 수평, Column은 수직
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'hey, lee',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      Text(
                        'wolcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$5 12345 6789',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const CurrencyCard(
                name: 'Euro3',
                code: 'EUR',
                amount: '12345',
                icon: Icons.euro_rounded,
                isInverted: false,
                order: 0,
              ),
              const CurrencyCard(
                name: 'Bitcoin3',
                code: 'BTC',
                amount: '7865',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                order: 1,
              ),
              const CurrencyCard(
                name: 'Dollar3',
                code: 'USD',
                amount: '199090',
                icon: Icons.money_off_outlined,
                isInverted: false,
                order: 2,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
