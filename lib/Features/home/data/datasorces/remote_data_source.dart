import 'package:bookly_app/Features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/constance.dart';
import 'package:bookly_app/core/api/api_consumer.dart';
import 'package:bookly_app/core/api/end_points.dart';
import 'package:bookly_app/core/functions/save_books.dart';

abstract class RemoteDataSource {
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchFreedBooks();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiConsumer apiConsumer;

  RemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var response = await apiConsumer.get(path: EndPoints.newBooks);
    List<BookEntity> books = getBookList(response);
    saveBooksData(books, kNewBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchFreedBooks() async {
    var response = await apiConsumer.get(path: EndPoints.freeBooks);
    List<BookEntity> books = getBookList(response);
    saveBooksData(books, kFreeBox);
    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMab in data['items']) {
      books.add(BookModel.fromJson(bookMab));
    }
    return books;
  }
}
