import 'package:bookly_app/core/errors/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../entites/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks();
}
