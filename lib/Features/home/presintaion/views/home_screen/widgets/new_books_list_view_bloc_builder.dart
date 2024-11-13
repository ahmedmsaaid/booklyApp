import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/domain/usecases/feach_new_books_use_case.dart';
import 'package:bookly_app/Features/home/presintaion/controllers/new_books_cubit/new_books_cubit.dart';
import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/widgets/suggestions_list.dart';
import 'package:bookly_app/core/serveses/serves_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CostumeListVewBlocBuilder extends StatelessWidget {
  const CostumeListVewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksState>(
      builder: (context, state) {
        return state is SuccessNewBooks
            ? CostumeListView(
                books: state.books,
              )
            : state is ErrorNewBooks
                ? Text(state.msg)
                : state is LoadingNewBooks
                    ? const Center(child: CircularProgressIndicator())
                    : const Center(child: Text("data"));
      },
    );
  }
}
