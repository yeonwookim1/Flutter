import 'package:dart/dart.dart' as dart;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  nullTest();
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
