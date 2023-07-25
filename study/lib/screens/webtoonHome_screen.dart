import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/webtoon.dart';
import '../services/api_service.dart';
import '../widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapShot) {
          print(snapShot.hasData);
          if (snapShot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapShot)),
                //expanded(남는 공간을 차지) 또는 높이를 지정해줘야한다. 아니면 exception
              ],
            );
          }
          return const Text('Loading');
        },
      ),
    );
  }

  BoxShadow getWebToonShadow() {
    return BoxShadow(
      blurRadius: 15,
      offset: const Offset(10, 10),
      color: Colors.black.withOpacity(0.5),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> futureData) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: futureData.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      separatorBuilder: (context, index) => const SizedBox(width: 40),
      itemBuilder: (context, index) {
        var webtoon = futureData.data![index];
        return Webtoon(
            id: webtoon.id, title: webtoon.title, thumb: webtoon.thumb);
      },
    );
  }
}
