import 'package:flutter/material.dart';
import 'package:webtoonapp/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  Webtoon(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('take me home~!');
        Navigator.push(context, MaterialPageRoute(fullscreenDialog: true,
            builder: (context)=>DetailScreen(title: title, thumb: thumb, id: id)));
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        offset: Offset(5, 5),
                        color: Colors.black.withOpacity(0.5)),
                  ]),
              child: Image.network(thumb, headers: const {
                "User-Agent":
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
