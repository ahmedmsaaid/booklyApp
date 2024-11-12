import 'package:bookly_app/Features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/core/api/api_consumer.dart';
import 'package:bookly_app/core/api/end_points.dart';

abstract class BaseRemoteDataSource {
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
}

class RemoteDataSource extends BaseRemoteDataSource {
  final ApiConsumer apiConsumer;

  RemoteDataSource({required this.apiConsumer});
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var response = await apiConsumer.get(path: EndPoints.newBooks);
    return getBookList(response);
    ;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var response = await apiConsumer.get(path: EndPoints.freeBooks);
    return getBookList(response);
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMab in data['items']) {
      books.add(BookModel.fromJson(bookMab));
    }
    return books;
  }
}
