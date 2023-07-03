import 'package:flutter/material.dart';
import 'package:study/screens/home_screen.dart';
import 'package:study/widgets/button.dart';
import 'package:study/widgets/currency_card.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(AppState());
}

//절대 Root
class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
