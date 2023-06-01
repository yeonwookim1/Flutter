Flutter

작성한 input (버튼 등) 코드가 엔진(C/C++)을 통해 실행

엔진을 동작시키는 역할만 수행, 호스트(특정 OS)에 의해 그려지지 않음

앱 실행 -> ios runner -> 엔진 실행 -> 엔진이 UI를 렌더링

swift에서 만든 ios앱의 컴포넌트와 유사하게 하지만 똑같지는 않음



Main

메인함수에서 runApp(Widget) 함수를 통해 실행

여러 Widget(UI)을 조립해서 어플리케이션을 만들게 됨

Wideget을 상속 받아서 build 매소드를 override해서 사용하게 된다.

앱의 root이기 때문에 기본적으로 material(구글 스타일) 또는 cupertino(애플 스타일) 를 반환해줘야한다.

화면은 scaffold를 가져와서 하는 것이 통상적인 규칙

- class

```
new 생략
named parameter
설명의 클래스 필드에 ? 붙은 건는 필수가 아님
```





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





Reusable Widgets

- 반복되는 소스들을 막기 위해 별도의 위젯으로 구성
- class 처럼 분리하여 사용할 수 있도록
- 분리하면서 프로퍼티로 사용하는 것은 이제 더 이상 const를 붙일 수 없음