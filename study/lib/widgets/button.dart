import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

//build 매소드를 실행시켜야함
class Button extends StatelessWidget{

  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text, required this.bgColor, required this.textColor
  })

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45)),
      child: Padding(   //padding은 프로퍼티가 있기에 const로 선언할 수 없다.
        padding:
        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
