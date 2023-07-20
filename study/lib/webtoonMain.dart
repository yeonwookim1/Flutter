import 'dart:io';

import 'package:flutter/material.dart';
import 'package:study/screens/webtoonHome_screen.dart';
import 'package:study/services/api_service.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36";
  }
}

void main(){
  print("request");
  // ApiService.getTodaysToons();
  //HttpOverrides.global = MyHttpOverrides();
  runApp(Webtoon());
}

class Webtoon extends StatelessWidget {
  const Webtoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
