클래스



- 클래스안의 필드는 타입을 명시해줘야한다. (String, int 등)
- 객체를 할당할 때, new를 생략 가능
- 클래스 매서드 내에는 this를 사용하지 않는 것으로 권고



생성자

- 생성자에 정의 되는 필드들은 late를 붙여서 나중에 값이 정해진다고 명시해서 사용

- ```dart
  class Player{
    late final String name;
    late int age;
    
    Player(String name, int age){
      this.name = name;
      this.age = age;
    }
  }
  ```

- 생성자에서 타입명의 반복되어서 사용, 아래와 같이 사용한다.

- ```dart
  class Player{
    final String name;
    int age;
    
    Player(this.name, this.age);
  }
  ```

  ​

argument

- position을 지켜줘야 하기에 named argument를 사용

- ```dart
  class Player{
    final String name;
    int xp;
    String team;
    int age;

    Player({required this.name, required this.xp
      , required this.team, required this.age});
  }

  void main(){
  	var player = Player(name:"son", xp:1500, team:"kor ", age:30);
  }
  ```

  ​