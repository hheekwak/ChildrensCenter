import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'person.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key, required this.student});

  final Student student;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.student.name),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(widget.student.imgPath),
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Text(widget.student.location, style: const TextStyle(fontSize: 18)),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          LikeButton(
            size: 30,
            isLiked: isLiked,
            likeCount: likeCount,
          )
        ]),
      ),
    );
  }
}
