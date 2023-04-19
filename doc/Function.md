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






파라미터

- 파라미터를 자바와 달리 필수 값이 아니도록 설정할 수 있다.

- 파라미터를 {}로 사용시 필수 값이 없을 수 있음(null safety 하지 않다.)

- ```
  void test({String name, int age}){...}

  void main(){
    test("kyw", 27);
    
    test(
      name : "kyw",
      age : 27
    );
  }
  ```

- 생성자에 필수값 선언 또는 default를 설정하여 null safety하게 할 수 있다.

- ```
  void test({String name='kyw', int age = 27}){...}
  void test({requried String name, requried int age}){...}
  ```

  ​