Type 선언

- var 또는 명시적으로 String, int와 같이 선언 가능
- 지역변수로 var를 사용, class나 property에 선언시 타입 명시를 해줌



Dynamic

- 타입에 Dynamic으로 선언해주면 어떤 타입으로도 값이 가능하다는 의미



nullable

- 타입에 ?를 붙여줌으로써 null도 가능하다는 것을 명시

- ```dart
  String? name = 'kyw';
  if(name != null){name.isNotEmpty;}
  name?.isNotEmpty;
  ```

- null 이 가능하다는 것을 명시함으로써 Dart는 null safety