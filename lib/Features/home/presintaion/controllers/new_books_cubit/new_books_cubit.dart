import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/usecases/feach_new_books_use_case.dart';
import 'package:meta/meta.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.fetchNewBooksUseCase) : super(NewBooksInitial());
  final FetchNewBooksUseCase fetchNewBooksUseCase;
  Future<void> getNewBooks() async {
    var result = await fetchNewBooksUseCase.call();
    result.fold((failure) => emit(ErrorNewBooks(failure)),
        (books) => emit(SuccessNewBooks(books)));
  }
}
