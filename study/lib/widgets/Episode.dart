import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/webtoon_episode_model.dart';

class Episode extends StatelessWidget{
  final WebtoonEpisodeModel episode;
  final String webtoonId;

  const Episode({
    Key? key,
    required this.episode,
    required this.webtoonId,
  }) : super(key : key);

  onButtonTap() async {
    final url = Uri.parse("https://comic.naver.com/webtoon/detail?titleId=${webtoonId}&no=${int.parse(episode.id) + 1}");
    //launchUrl를 사용하여 URL을 띄어준다.
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green.shade300,
            boxShadow: [getWebToonShadow()],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  episode.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                )
              ],
            ),
          )),
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