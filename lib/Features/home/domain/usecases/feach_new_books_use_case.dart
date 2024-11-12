import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewBooksUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;

  FetchNewBooksUseCase({required this.homeRepo});

  @override
  Future<Either<String, List<BookEntity>>> call([NoParams? params]) {
    // TODO: implement call
    return homeRepo.fetchNewsBooks();
  }
}
