import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/constance.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalDataSource {
  List<BookEntity> getNewBooks();
  List<BookEntity> getFreeBooks();
}

class LocalDataSourceImpl extends LocalDataSource {
  @override
  List<BookEntity> getFreeBooks() {
    var box = Hive.box<BookEntity>(kFreeBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewBooks() {
    var box = Hive.box<BookEntity>(kNewBox);
    return box.values.toList();
  }
}
