Basic

- String, int , double, num

- num은 int와 double의 부모 클래스이므로 값이 변경 가능하다.

- ```dart
  num age = 2;
  age = 2.2;
  ```

  ​

List

- object를 상속

- collection if

  - 존재할 수 도 있고, 존재할 수도 없는 값을 넣어줄 수 있다.

  - ```dart
    var isTest= true;
    List<int> numbers = [1,2,3,4,5, if(isTest) 6];

    //같은 의미

    if(isTest){
      numbers.add(6);
    }
    ```

- collection for

  - 배열의 값에 다른 배열의 값을 추가할 수 있다.

  - ```dart
    var koreaFoods = ['kimchi'];
    var allFoods = ['pizza', for(var str in koreaFoods) "$i made by korea"];

    //같은 의미

    var allFoods = ['pizza'];
    for(var str in koreaFoods){
      allFoods.add($str + " made by korea");
    }
    ```

    ​



String interpolation

- String 내에 $변수를 추가함으로 메모리를 아낄 수 있다.

- ${}를 활용하여 변수를 핸들링하여 추가할 수 있다.

- ```dart
  var name = "kyw";
  var age = 27;
  var greeting = "hello my name is $name, nice to meet you, my age is ${age + 3}";
  ```

  ​

Map

- key와 value로 이루어짐, value타입이 여러개인 경우  value는 object를 기본으로 가진다.

- var로 선언시 컴파일러가 key와 value의 타입을 추측하여 사용

- ```dart
  var player={
      'name': 'kyw',
      'xp' : 19.99,
      'superpower' : true,
    };

  player['test'] = false;	//값 추가

    Map<int, bool> player2 = {
      1: true,
      2: true,
      3: false,
    };
  ```

  ​