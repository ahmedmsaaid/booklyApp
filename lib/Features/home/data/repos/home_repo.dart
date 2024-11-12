import 'package:bookly_app/Features/home/data/datasorces/local-data_source.dart';
import 'package:bookly_app/Features/home/data/datasorces/remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/error_handler.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final RemoteDataSource homeRemoteDataSource;
  final LocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getNewBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getNewBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }
}
