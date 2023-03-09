import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class ArticleScreen extends StatefulWidget {
  final ArticleModel data;
  const ArticleScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  bool _zoomEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() => _zoomEnabled = !_zoomEnabled);
              },
              icon: Icon(Icons.zoom_in))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                widget.data.title,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: (_zoomEnabled ? 48 : 24)),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                widget.data.text,
                style: TextStyle(fontSize: (_zoomEnabled ? 28 : 14)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
