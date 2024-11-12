import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books, String key) {
  var box = Hive.box(key);
  box.addAll(books);
}
