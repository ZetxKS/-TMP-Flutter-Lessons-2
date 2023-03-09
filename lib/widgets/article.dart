import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/providers/comments_provider.dart';
import 'package:newsapp/screens/article_screen.dart';
import 'package:newsapp/screens/commets_screen.dart';

class Article extends StatelessWidget {
  final ArticleModel data;
  const Article({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.title,
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(data.text, maxLines: 3, overflow: TextOverflow.fade,),
          ElevatedButton(onPressed: () {
            final route = MaterialPageRoute(builder: (_) => ArticleScreen(data: data));
            Navigator.push(context, route);
          }, child: const Text("Read")),
          TextButton(onPressed: () {
            final route = MaterialPageRoute(builder: (_) => CommentsScreen(comments: data.comments));
            Navigator.push(context, route);
          }, child: Text("Comments")),
          Container(
            height: 1,
            color: const Color(0x32000000),
          ),
        ],
      ),
    );
  }
}
