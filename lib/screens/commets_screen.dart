import 'package:flutter/material.dart';
import 'package:newsapp/app.dart';
import 'package:newsapp/models/comment_model.dart';

import '../widgets/comment.dart';

class CommentsScreen extends StatelessWidget {
  final List<CommentModel> comments;
  const CommentsScreen({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comments")),
      body: ListView(
        children: comments.map((e) => Comment(comment: e)).toList(),
      ),
    );
  }
}