import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/models/webtoon_episode_model.dart';
import 'package:study/services/api_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/webtoon_detail_model.dart';
import '../widgets/Episode.dart';

class DetailScreen extends StatefulWidget {
  //받아서 사용해야하기에 sattefulWidget을 사용
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;

  //앞전의 화면에서 받아서 사용해야하는 경우에는 initState를 활용하여 데이터를 받는다.
  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodeById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                        width: 250,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [getWebToonShadow()]),
                        child: Image.network(
                          widget.thumb,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                future: webtoon,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshot.data!.about,
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${snapshot.data!.genre}/${snapshot.data!.age}",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    );
                  }
                  return Text("...");
                },
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                  future: episodes,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          for (var episode in snapshot.data!)
                            Episode(episode: episode, webtoonId:widget.id)
                        ],
                      );
                    }
                    return Container();
                  })
            ],
          ),
        ),
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
}

