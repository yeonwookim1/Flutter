UI

Widget

위에 다른걸 올리기 위해서 column을 사용  

Scaffold를 기준으로 여러 Widget을 넣어준다.



요소들을 한 행(가로,세로)에 두기 위해선 Row를 사용

한 열에 (위, 아래) 두기 위해선 Column을 사용



Container(div) 

- 하나의 영역을 가지게 사용하는 요소 html의 div와 비슷- 


- decoration: BoxDecoration을 사용하여 box를 꾸밀 수 있음.

**

클래스들에게 const 를  자동으로 붙여주거나 또는 무시할 수 있게 설정할 수 있다.

```
intellij 아래의 문구를 import 부분 아래에 추가하여 준다.

// ignore_for_file: prefer_const_constructors
```





Reusable Widgets(재사용 위젯)

- 반복되는 소스들을 막기 위해 별도의 위젯으로 구성
- class 처럼 분리하여 사용할 수 있도록
- 분리하면서 프로퍼티로 사용하는 것은 이제 더 이상 const를 붙일 수 없음
- const로 선언하면 컴파일시 메모리에 저장하여 사용



Icon

- SDK에 기본적인 Icons들이 내장

- 아이콘에 transform을 입히면 overflow한 아이콘을 추가할 수 있음

- ```dart
  Container(
     clipBehavior: Clip.hardEdge,	//overflow된 부분은 숨겨지도록
     ...
  Transform.scale(
    scale: 2,
    child:  const Icon(
              Icons.euro_rounded,
              color: Colors.white,
              size: 98,
    		),
   )
    ...
  )
  ```

- container를 넘치는 아이콘 크기는 clipBehavior을 사용하면 overflow된 것에 대한 처리를 할 수 있음

변수의 앞에 _를 붙이는 것은 private 하다는 의미

- 재사용 되는 객체들은 같이 묶어줘서 코드를 작성하자
- Transform.translate를 겹치는 카드 클래스에 넣어서 작성