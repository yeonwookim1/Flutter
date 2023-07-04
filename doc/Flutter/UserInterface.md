



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