part of 'new_books_cubit.dart';

@immutable
sealed class NewBooksState {}

final class NewBooksInitial extends NewBooksState {}

final class LoadingNewBooks extends NewBooksState {}

final class SuccessNewBooks extends NewBooksState {
  final List<BookEntity> books;
  SuccessNewBooks(this.books);
}

final class ErrorNewBooks extends NewBooksState {
  final String msg;
  ErrorNewBooks(this.msg);
}
