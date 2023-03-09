import 'dart:math';
import 'package:timeago/timeago.dart' as timeago;
import 'package:newsapp/models/comment_model.dart';
import 'package:faker_dart/faker_dart.dart';

class CommentsProvider {
  final faker = Faker.instance;

  List<CommentModel> getComments() {
    int count = Random().nextInt(10) ?? 1;

    return  List.generate(10, (index) => CommentModel(Author: faker.fake("{{name.firstName}} {{name.lastName}}"), date: timeago.format(faker.datatype.dateTime(min:2022, max: 2023)), image: "https://sunrift.com/wp-content/uploads/2014/12/Blake-profile-photo-square.jpg", text: faker.lorem.text(paragraphCount: 10))).toList();
  }
}