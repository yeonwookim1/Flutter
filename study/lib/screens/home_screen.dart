import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 5;
  int totalSeconds = 1500;
  int pomodorosCount = 0;
  bool isRunning = false;
  late Timer timer;

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    print(duration.toString().split(".").first.substring(2,7));  //[0]
    return duration.toString().split(".").first.substring(2,7);
  }

  void onTick(Timer timer){
    if(totalSeconds < 0){
      setState(() {
        timer.cancel();
        isRunning = false;
        totalSeconds = 5;
        pomodorosCount++;
      });
    }else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed(){
    timer = Timer.periodic(Duration(seconds:1), onTick,);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed(){
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: IconButton(
                iconSize: 120,
                color: Theme.of(context).cardColor,
                onPressed: isRunning ? onPausePressed : onStartPressed,
                icon: Icon(isRunning
                    ? Icons.pause_circle_outline
                    : Icons.play_circle_outline),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pomodoros',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .color,
                            ),
                          ),
                          Text(
                            '$pomodorosCount',
                            style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .headline1!
                                .color,
                          ),),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
