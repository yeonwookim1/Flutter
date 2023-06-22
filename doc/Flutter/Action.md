satetless widget

- 데이터를 가지지 않고, build 매소드를 통해 단지 UI를 출력



stateful widget

- 상태를 가지고 있어 상태에 따라 변화게 될 데이터

- ```dart
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
  ```

  ​

state

- 위젯에 들어갈 데이터와 UI를 넣는 곳

- ```dart
    int cnt = 0;

    void onClicked() {
      cnt++;
    }
  ```

- onClicked 매서드만으로는 데이터가 업데이트 되지 않는다.



setState

- staet클래스에게 데이터가 변경되었다고 알리는 함수

- 업데이트를 알려주는 역할

- setState안에 데이터를 필수로 넣어야 하는 것은 아님 > setState가 호출 되면 build 매서드가 다시 호출 > 명확성을 위해 setState안에 작성

- ```dart
   void onClicked() {
      setState(() {
        cnt++;
      });
    }
  ```

  ​