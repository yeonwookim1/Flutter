



Flexible

- 하나의 박스가 얼마나 공간을 차지할지 비율을 정해줌

- 픽셀로 크기를 정하지 않고 프레임워크와 플러터엔진이 정해준다.

- ```dart
  body: Column(
          children: [
            Flexible(
              flex: 1,
             .....
              ),
            ),
          ),
            Flexible(
            flex: 2,
            .......
  ```



Expanded

- Expanded Widget을 사용하면 화면 시작부터 끝까지 확장이 가능



Timer

- dart 라이브러리에 포함

- duration 마다 (timer){}함수를 호출

- ```dart
  /* 
  void onStartPressed(){
    	timer = Timer.periodic(duration, (timer) {...})
    }
  */
    void onTick(Timer timer){
      setState(() {
        totalSeconds-= 1;
      });
    }

    void onStartPressed(){
      timer = Timer.periodic(Duration(seconds:1), onTick,); //<- 함수명만 작성
    }
  ```

  ​

format

- Duration을 사용하여 format을 맞출 수 있다.

- ```dart
  var duration = Duration(seconds: seconds);
  ```

  ​