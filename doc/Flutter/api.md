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

- 생성자를 .fromJson을 이용해서 json을 파싱해서 처리할 수 있다.



FutrueBuilder

- StatefulWidget 을 사용하여 service에서 list를 받아와 setState로 build를 재실행해서 보여 주는 방법 > 불편

- StatelessWidget을 사용하여 진행한다 > Future를 받아서 기다리게 하는 방법 > FutrueBuilder

- 두번째 인자(snapshot) : future의 상태를 알 수 있음

- setState도 없이 future를 기다렸다가 실행

- ```dart
   body: FutureBuilder(
          future: webtoons,
          builder: (context, futureData) {
              if(futureData.hasData){
              	return Text("There is data!");
            	}
            return Text('Loading');
          },
   ```





라이브러리

url_launcher

- URL을 실행시켜 브라우저로 연결시켜준다.

- ```dart
  onButtonTap() async {
      final url = Uri.parse("https://comic.naver.com/webtoon/detail?titleId=${webtoonId}&no=${int.parse(episode.id) + 1}");
      //launchUrl를 사용하여 URL을 띄어준다.
      await launchUrl(url);
    }
  ```



shared_preferences

- 저장소처럼 사용할 수 있도록 사용(메모리 저장)

- getInstance를 통하여 저장공간을 할당하여 사용한다.

- ```dart
  prefs = await SharedPreferences.getInstance();


  final likedToons = prefs.getStringList('likedToons');    //get

  prefs.setStringList('likedToons', []);    //저장
  ```

  ​