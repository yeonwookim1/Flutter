필요한 라이브러리, 패키지는 pub.dev 에서 다운로드 가능



pubspec.yaml

- 프로젝트를 설정하는 yaml




Future

- 미래에 받기 위해 사용

- 비동기

- 기다리고 처리 하고 싶은경우 await를 처리한다. (awiat는 비동기 함수에서만 사용 가능)

- ```dart
  //http 라이브러리 사용

  Future<dynamic> getTodaysToons()async {				//async 비동기 함수
    final url = Uri.parse('$baseUrl/$today');
    await http.get(url);
    ...
    return toon;
  }
  ```

- 비동기 함수일 경우 반환형을 Futrue<T>로 해주어야한다.






JSON

- dart에 decode, encode 매소드가 존재

- ```dart
  final List<dynamic> webtoons = jsonDecode(response.body);	//object List
  ```

  ​