import 'package:flutter/material.dart';
import 'package:study/widgets/button.dart';
import 'package:study/widgets/currency_card.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(AppState());
}

//절대 Root
class AppState extends StatefulWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  State<AppState> createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {

  bool showTitle = true;

  void toggleTitle(){
    setState(() {
      showTitle = !showTitle;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color:Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? MyLargeTitle() : Text("nothing"),
            IconButton(
                onPressed: toggleTitle,
                icon: Icon(Icons.remove_red_eye)
            ),
          ],
        )),
      ),
    );
  }
}




class MyLargeTitle extends StatefulWidget{

  const MyLargeTitle({
   Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {

  int count = 0;

  //build보다 먼저 실행되어야할때
  @override
  void initState() {
    super.initState();
    //변수 초기화 등
    print("initState!");
  }

  @override
  void dispose(){
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build!");
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30, color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }

}