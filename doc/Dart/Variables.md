Type 선언

- var 또는 명시적으로 String, int와 같이 선언 가능
- 지역변수로 var를 사용, class나 property에 선언시 타입 명시를 해줌



Dynamic

- 타입에 Dynamic으로 선언해주면 어떤 타입으로도 값이 가능하다는 의미



nullable

- 타입에 ?를 붙여줌으로써 null도 가능하다는 것을 명시

- 기본적으로 변수들은 nullable이 아니다.

- ```dart
  String? name = 'kyw';
  if(name != null){name.isNotEmpty;}
  name?.isNotEmpty;
  ```

- null 이 가능하다는 것을 명시함으로써 Dart는 null safety



Final

- 타입을 final로 선언시 변수는 수정할 수 없다.

- ```dart
  final name = 'kyw';
  final String name2 = 'kyw';
  ```

  ​

late

- late는 초기데이터 없이 변수를 선언할 수 있게 한다. 

- final이나 var 앞에 붙여서 사용한다.

- 값을 넣기전까지 접근할 수 없다.

- ```dart
  late final String name;
  //do something, go to api, get name
  name = 'kyw';
  ```



const

- 컴파일 될 때, 알고 있어야하는 값 (수정불가)

