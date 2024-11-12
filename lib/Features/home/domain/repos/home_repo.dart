import 'package:dartz/dartz.dart';

import '../entites/book_entity.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookEntity>>> fetchNewBooks();
  Future<Either<String, List<BookEntity>>> fetchNewsBooks();
}
