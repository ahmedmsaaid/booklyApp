import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/Features/home/domain/usecases/feach_new_books_use_case.dart';
import 'package:bookly_app/core/errors/error_handler.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturesBookUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;

  FetchFeaturesBookUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? params]) {
    // TODO: implement call
    return homeRepo.fetchFeaturedBooks();
  }
}
