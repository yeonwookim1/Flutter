class WebtoonModel {
  final String title, thumb, id;

  //named constructor
  WebtoonModel.fromJson(Map<String, dynamic> json)
      :
        title = json["title"],
        thumb = json["thumb"],
        id = json["id"];

}
//아래와 같이 생성자를 만들 수 있지만 많이 사용하는 포맷이 아님
// class WebtoonModel {
//   late String title, thumb, id;
//
//   WebtoonModel.fromJson(Map<String, dynamic> json){
//       
//         title = json["title"];
//         thumb = json["thumb"];
//         id = json["id"];
//  }
// }