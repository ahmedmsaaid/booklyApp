import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/BookModel.dart';
import 'package:meta/meta.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit() : super(NewBooksInitial());
}
