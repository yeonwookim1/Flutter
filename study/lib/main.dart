import 'package:flutter/material.dart';
import 'package:study/widgets/button.dart';
import 'package:study/widgets/currency_card.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(AppState());
}

class AppState extends StatefulWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  State<AppState> createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {
  int cnt = 0;

  void onClicked() {
    setState(() {
      cnt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'click count',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$cnt',
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
              onPressed: onClicked,
              icon: const Icon(
                Icons.add_box_rounded,
              ),
            )
          ],
        )),
      ),
    );
  }
}
