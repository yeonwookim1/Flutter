

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:study/models/webtoon.dart';

class ApiService {
  static const String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if(response.statusCode == 200){

      final List<dynamic> webtoons = jsonDecode(response.body); //jsonList 형태로 온다.
      for(var webtoon in webtoons){
        final toon = WebtoonModel.fromJson(webtoon);

        webtoonInstances.add(toon);
      }

      return webtoonInstances;
    }
    throw Error();
  }

}