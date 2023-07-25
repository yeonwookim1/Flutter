import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tap event");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(title: title, thumb: thumb, id: id),
            fullscreenDialog: true, //이미지가 아래로 올라오게 애니매이션
          ),
        ); //Stateless 를 지원하지 않음
      },
      child: Column(children: [
        Hero(
          tag: id,
          child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [getWebToonShadow()]),
              child: Image.network(
                thumb,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ]),
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
