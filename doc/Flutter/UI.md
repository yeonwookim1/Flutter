UI

Widget

위에 다른걸 올리기 위해서 column을 사용  

Scaffold를 기준으로 여러 Widget을 넣어준다.



요소들을 한 행(가로,세로)에 두기 위해선 Row를 사용

한 열에 (위, 아래) 두기 위해선 Column을 사용



Container(div) 

- 하나의 영역을 가지게 사용하는 요소 html의 div와 비슷- 


- decoration: BoxDecoration을 사용하여 box를 꾸밀 수 있음.

**

클래스들에게 const 를  자동으로 붙여주거나 또는 무시할 수 있게 설정할 수 있다.

```
intellij 아래의 문구를 import 부분 아래에 추가하여 준다.

// ignore_for_file: prefer_const_constructors
```





Reusable Widgets(재사용 위젯)

- 반복되는 소스들을 막기 위해 별도의 위젯으로 구성
- class 처럼 분리하여 사용할 수 있도록
- 분리하면서 프로퍼티로 사용하는 것은 이제 더 이상 const를 붙일 수 없음
- const로 선언하면 컴파일시 메모리에 저장하여 사용



Icon

- SDK에 기본적인 Icons들이 내장

- 아이콘에 transform을 입히면 overflow한 아이콘을 추가할 수 있음

- ```dart
  Container(
     clipBehavior: Clip.hardEdge,	//overflow된 부분은 숨겨지도록
     ...
  Transform.scale(
    scale: 2,
    child:  const Icon(
              Icons.euro_rounded,
              color: Colors.white,
              size: 98,
    		),
   )
    ...
  )
  ```

- container를 넘치는 아이콘 크기는 clipBehavior을 사용하면 overflow된 것에 대한 처리를 할 수 있음

변수의 앞에 _를 붙이는 것은 private 하다는 의미

- 재사용 되는 객체들은 같이 묶어줘서 코드를 작성하자
- Transform.translate를 겹치는 카드 클래스에 넣어서 작성



ListView

- 여러항목을 나열
- children을 가져서 항목을 나열 > 데이터가 많은 경우 메모리 leak 가능성이 있다.



ListView.builder

- 만들려는 아이템의 itemBuilder에 접근하여 메모리 최적화(사용자가 보는 item만 메모리에 올림)


- itemBuilder를 통해 인덱스에만 접근

- itemBuilder 필수값

- ```dart
  return ListView.builder(
    ....
    itemBuilder: (context, index){
      var webtoon = futureData.data![index];    //!는 데이터가 무조건 있다는 명시
      return Text(webtoon.title);
    },
  );
  ```



ListView.separated

- 아이템 사이에 랜더를 진행

- separatorBuilder를 필수 값으로 가진다.

- ```dart
  return ListView.builder(
    ...
    separatorBuilder: (context, index) => const SizedBox(width:20),
    ...
  );
  ```



Image.network

- url을 통해 이미지를 호출하는 경우 

- web url주소일 경우 ide툴에서는 안되는 경우가 있다. user-agent가 defalut로 dart/<version>이 들어감

- ```dart
  //방법 1
  // user-agent를 명시해준다. user-agent 검색해서 추가(구글 검색하면 나옴)
  child: Image.network(
    webtoon.thumb,
    headers: const {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36",},
  ),

  //방법 2
  // grolbal로 처리해준다.
  class MyHttpOverrides extends HttpOverrides {
    @override
    HttpClient createHttpClient(SecurityContext? context) {
      return super.createHttpClient(context)
        ..userAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
    }
  }

  void main() {
    HttpOverrides.global = MyHttpOverrides();

    runApp(const App());
  }


  //방법3
  //위 방법도 안되는 경우가 있음
  //IDE tool 상단에 보면 Chrome(web) 선택하는 옆 부분에 main.dart 항목의 Edit Configurations를 클릭
  //run args에 --web-renderer html 추가

  ```

  ​

