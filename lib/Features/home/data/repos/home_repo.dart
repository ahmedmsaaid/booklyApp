import 'package:bookly_app/Features/home/data/datasorces/local-data_source.dart';
import 'package:bookly_app/Features/home/data/datasorces/remote_data_source.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/exeption.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final RemoteDataSource homeRemoteDataSource;
  final LocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<String, List<BookEntity>>> fetchNewBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getNewBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on ServerErrors catch (e) {
      return left(e.errorModel.msg);
    }
  }

  @override
  Future<Either<String, List<BookEntity>>> fetchNewsBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getNewBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on ServerErrors catch (e) {
      return left(e.errorModel.msg);
    }
  }
}
