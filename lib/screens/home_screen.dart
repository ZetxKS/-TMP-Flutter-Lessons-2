import 'package:flutter/material.dart';
import 'package:newsapp/providers/article_provider.dart';
import 'package:newsapp/widgets/article.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final articles = ArticleProvider().getArticles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.blue[800]),
      body: ListView(
        children: articles.map((e) => Article(data: e)).toList(),
      ),
    );
  }
}
