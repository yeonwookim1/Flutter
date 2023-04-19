function

- 함수 선언시 반환값을 앞에 선언하여 준다. (String hello())

- 반환값이 없는 경우 void로 선언(void main() : main은 리턴이 없이 처음 시작되는 함수)

- line이 한 개 인경우 간단하게 return을 표현할 수 있다.

- ```dart
  String sayHello(String name) => "hello $name nice to meet you";

  String sayBye(String name){
    return "Bye $name nice to meet you";
  }
  ```






named argument

- 파라미터를 자바와 달리 필수 값이 아니도록 설정할 수 있다.

- 파라미터를 {}로 사용시 필수 값이 없을 수 있음(dart는 null safety 이기에 컴파일 에러 발생)

- 함수 호출시 순서를 지키지 않아도 된다.

- ```dart
  void test({String name, int age}){...}

  void main(){
    test("kyw", 27);
    
    test(
    	age : 27,
     	name : "kyw"
    );
  }
  ```

- 생성자에 필수값 선언 또는 default를 설정하여 null safety하게 할 수 있다.

- ```dart
  void test({String name='kyw', int age = 27}){...}
  void test({requried String name, requried int age}){...}
  ```

- default는 개발자의 실수가 들어갈 수 있으므로 requried를 사용하는 것이 null safe하게 사용할 수 있다.