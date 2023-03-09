import 'package:newsapp/providers/comments_provider.dart';

import 'comment_model.dart';

class ArticleModel {
  final String title;
  final String text;
  final int id;
  final List<CommentModel> comments = CommentsProvider().getComments();

  ArticleModel({required this.id, required this.title, required this.text});
}