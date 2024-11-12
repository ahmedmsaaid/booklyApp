part of 'free_books_cubit.dart';

@immutable
sealed class FreeBooksState {}

final class FreeBooksInitial extends FreeBooksState {}

final class LoadingFreeBooks extends FreeBooksState {}

final class SuccessFreeBooks extends FreeBooksState {
  final List<BookEntity> books;

  SuccessFreeBooks({required this.books});
}

final class ErrorFreeBooks extends FreeBooksState {
  final String msg;

  ErrorFreeBooks({required this.msg});
}
