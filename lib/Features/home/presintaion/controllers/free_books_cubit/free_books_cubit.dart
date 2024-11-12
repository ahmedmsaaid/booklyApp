import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/home/domain/usecases/fetch_features_book_use_case.dart';
import 'package:meta/meta.dart';

part 'free_books_state.dart';

class FreeBooksCubit extends Cubit<FreeBooksState> {
  FreeBooksCubit(this.getFreeBooksUseCase) : super(FreeBooksInitial());
  final GetFreeBooksUseCase getFreeBooksUseCase;
  Future<void> getFreeBooks() async {
    var result = await getFreeBooksUseCase.call();
    result.fold((failure) => emit(ErrorFreeBooks(msg: failure)),
        (books) => emit(SuccessFreeBooks(books: books)));
  }
}
