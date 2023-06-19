import 'package:flutter/material.dart';
import 'package:study/widgets/button.dart';
import 'package:study/widgets/currency_card.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(App());
}

//root
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //new 생략 //named parameter, 클래스 필드에 ? 붙은 건는 필수가 아님
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Kyw',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8), fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 200',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: "Transfer",
                        bgColor: Colors.black,
                        textColor: Colors.amber),
                    Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    icon: Icons.euro_rounded,
                  isInverted: false,
                  offsetX: 0,
                  offsetY: 0
                ),
                CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "9 785",
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                      offsetX: 0,
                      offsetY: -20
                  ),
                CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "428",
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                      offsetX: 0,
                      offsetY: -40
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
