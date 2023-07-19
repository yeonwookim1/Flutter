import 'package:flutter/material.dart';
import 'package:study/services/api_service.dart';

void main(){
  print("request");
  ApiService.getTodaysToons();
  runApp(Webtoon());
}

class Webtoon extends StatelessWidget {
  const Webtoon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
