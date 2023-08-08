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



서비스와 모델 사용하게 될 화면으로 나누어서 구성한다.

반복사용되는 위ㅣ젯은 분리하여 사용해줘야한다.

http 통신을 기다려야하는 경우 매소드에 async, 변수에 await를 사용하여 준다.