클래스

- 클래스안의 필드는 타입을 명시해줘야한다. (String, int 등)
- 객체를 할당할 때, new를 생략 가능
- 클래스 매서드 내에는 this를 사용하지 않는 것으로 권고



Constructor

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

Argument

- position을 지켜줘야 하기에 named argument를 사용

- ```dart
  class Player{
    final String name;
    int xp;
    String team;
    int age;

    Player({required this.name
      , required this.xp
      , required this.team
      , required this.age});
  }

  void main(){
  	var player = Player(name:"son", xp:1500, team:"kor ", age:30);
  }
  ```




Named Constructor

- 생성자를 매서드 처럼 선언하여 상황에 따라 다르게 사용할 수 있음

- ```dart
  class Player{

    Player.createKorPlayer({required String name, required int age}) :
    this.age = age,
    this.name = name,
    this.team = 'KOR',
    this.xp = 0;
  }
  void main(){
    var player = Player.createKorPlayer(name : "son", age :30);
  }
  ```

- flutter에서 자주 사용하는 fromJson 예시

- json 형식의 데이터를 받아서 객체로 만든다.

- ```dart
  class Player{
    ...
    Player.fromJson(Map<String, dynamic> playerJson) :
        name = playerJson["name"],
        xp = playerJson["xp"],
        team = playerJson["team"],
        age = playerJson["age"];
    ...
  }

  void main(){
    var apiData = [{"name" : "kyw","team":"kor", "xp": 999, "age" : 27}];
    apiData.forEach((data){
      var player = Player.fromJson(data);
    });
  }
  ```

  ​

Cascade Notation

- .. 을 사용하여 필드 및 매소드를 바로 호출할 수 있다.

- 생성 직후가 아니고 사용할 수 있다.

- ```dart
  var man = Player(name: 'kyw', xp: 1200, team: 'red', age: 10)
    ..name = 'kyw'
    ..xp = 120000
    ..team = 'blue'
    ..age = 20;

  var test = man
    ..name = 'man'
    ..xp = 12
    ..team = 'red'
    ..age = 10;
  ```

  ​

Enum

- 정의해서 사용할 때 (java의 enum과 유사)

- ```dart
  enum Team {
    red, blue, kor, nor
  }

  void main(){
    Team a = Team.red;
  }
  ```

  ​

Abstract Classes

- 다른 클래스들이 어떤 구조로 이루어질지를 정의(청사진)

- ```dart
  abstract class Human{
    void walk();
  }

  class Player extends Human {
    @override
    void walk(){
  	print("we go walking");
    }
  }
  ```

  ​

Inheritance

- extends로 상속을 받아서 사용

- super. 을 사용하여 부모클래스의 필드에 접근할 수 있다.

- ```dart
  class Human{
    final String name;
    Human({ required this.name});

    void sayHello(){
      print("hi my name is $name");
    }
  }

  class SoccerPlayer extends Human{
    final Team team;
    SoccerPlayer({required super.name, required this.team});
    
    @override
    void sayHello(){
      super.sayHello();
    }
  }
  ```

- 자식클래스는 부모클래스의 매소드를 override해서 suepr.매소드 호출로 사용 또는 정의하지않고 사용도 가능



Mixins

- 생성자가 없는 클래스 

- with MixinClass로 사용하여 내부의 프로퍼티와 매소드들을 가져와서 사용

- ```dart
  class Strong{
    final double level= 13.11;
  }

  class QuickRunner{
    void runQuick(){
      print("runnnnn");
    }
  }

  class BasketPlayer with Strong, QuickRunner{
    final String name = 'd';
  }

  void main(){
    var curry = BasketPlayer();
    curry.runQuick();
  }
  ```

  ​

