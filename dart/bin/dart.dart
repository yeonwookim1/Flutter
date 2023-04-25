import 'package:dart/dart.dart' as dart;

class Player{

  final String name;
  int xp;
  String team;
  int age;

  Player({required this.name
    , required this.xp
    , required this.team
    , required this.age});


  void sayHello(){
    //변수명이 겹치는 상황이 아니면 this를 권고하지 않음
    // var name = 123;
    // print("HI my name is ${this.name}");
    print("hi my name is $name");
  }
}

void main(List<String> arguments) {
  num a = 3;
  a = 1.2;

  var player = Player(name:"son", xp:1500, team:"kor ", age:30);
  player.sayHello();

  var player2 = Player(name:"holan", xp:1500, team:"nor", age:22);
  player2.sayHello();
}

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNum(ListOfInts list){
  var reversed = list.reversed; //iterable로 반환된다.
  return reversed.toList();
}

String nullQQTest(String? name){
  return name ??= 'default';
}

String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'NON';

String capitalizeName2(String? name) => name?.toUpperCase() ?? 'NON';

String optionalTest(String name, int age, [String? country = 'korea']){

  return "hello $name my age is $age i'm from $country";
}

String paramTest2({required String name, required int age}){
  return "hello $name my age is $age";
}

String paramTest({String name = 'test', int age = 30}){
  return "hello $name my age is $age";
}

//line이 한 개 인경우 간단하게 return을 표현할 수 있다.
String sayHello(String name) => "hello $name nice to meet you";

String sayBye(String name){
  return "Bye $name nice to meet you";
}

void setTest(){
  var numbers = {1,2,3,4};
  Set<int> numbers2 = {1,2,3,4};
  numbers2.add(5);
  numbers2.add(5);
  numbers2.add(5);

  print(numbers2);
}

void mapTest(){
  var player={
    'name': 'kyw',
    'xp' : 19.99,
    'superpower' : true,
  };
  player['test'] = false;

  Map<int, bool> player2 = {
    1: true,
    2: true,
    3: false,
  };
}

void stringTest(){
  var name = "kyw";
  var age = 30;
  var greeting = "hello my name is $name, nice to meet you, my age is ${age + 2}";
  print(greeting);

}

void listTest(){
  var isTest= true;
  List<int> numbers = [1,2,3,4,5, if(isTest) 6];  //collection if
  numbers.add(7);
  print(numbers);
  for(var i = 0; i<numbers.length; i++){
    print(numbers[i]);
  }

  var oldFriends = ['nico', 'name'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for(var friend in oldFriends) "하트 $friend"
  ];

  print(newFriends);

  var koreaFoods = ['kimchi'];
  var allFoods = ['pizza', for(var i in koreaFoods) "$i made by korea"];
  print(allFoods);

  var allFoods2 = ['pizza'];
  for(var str in koreaFoods){
    allFoods2.add("$str made by korea");
  }
}

void constTest(){
  //ccopile-time에 알고 있어야하는 값
  const name = 'kyw';

}

void lateTest(){
  late final String name;
  //do something, go to api, get name
  name = 'kyw';
}

void finalTest(){
  final name = 'kyw';
  final String name2 = 'kyw';
}

void nullTest(){
  String? name = 'kyw';
  name = null;
  if(name != null){
    print(name.isEmpty);
  }
  print(name?.isEmpty);
}

void dynamicTest(){
  //dynamic type : 여러 타입이 들어올 수 있음.
  var name;
  dynamic userName;

  if(name is String){   //인터넷에서 들어오는 변수에 대해 타입을 판단하고 사용할 수 있게 사용
    name = 'kyw';
  }

  print(name);
}

void varTest(){
  var name = 'kyw';
  String userName = 'kyw';
  int a = 3;

  //지역 변수는 var
  //class, property 선언할 때는 타입을 지정
}

void hello(){
  print('hello world');
}
