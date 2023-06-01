import 'package:flutter/material.dart';
import 'package:study/widgets/button.dart';
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
        body: Padding(
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
              SizedBox(height: 120),
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45)),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Button(text: "Request", bgColor : Color(0xFF1F2123), textColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
