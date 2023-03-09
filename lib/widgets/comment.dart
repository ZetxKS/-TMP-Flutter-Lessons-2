import 'dart:math';

import 'package:flutter/material.dart';
import 'package:newsapp/models/comment_model.dart';

class Comment extends StatefulWidget {
  final CommentModel comment;
  const Comment({super.key, required this.comment});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  widget.comment.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.comment.Author,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    widget.comment.date,
                    style: TextStyle(color: Color(0xAA000000)),
                  ),
                ],
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Text(
                widget.comment.text,
                style: TextStyle(color: Color(0xAA000000)),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.fade,
                maxLines: (expanded ? null : 3),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: Text((expanded ? "Truncate" : "Expand"))),
          Container(
            height: 1,
            color: Color(0x50000000),
          )
        ],
      ),
    );
  }
}
