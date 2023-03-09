import 'package:newsapp/models/article_model.dart';
import 'package:faker_dart/faker_dart.dart';

class ArticleProvider {
  final faker = Faker.instance;

  List<ArticleModel> getArticles() {
    return  List.generate(50, (index) => ArticleModel(id: index, title: faker.name.title(), text: faker.lorem.text(paragraphCount: 10)));
  }
}