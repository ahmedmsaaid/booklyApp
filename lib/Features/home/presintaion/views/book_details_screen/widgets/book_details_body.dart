import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/widgets/suggestions_list.dart';
import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/widgets/title.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_bar.dart';
import 'book_brice.dart';
import 'book_details.dart';
import 'book_image.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsAppBar(),
        SizedBox(
          height: 30,
        ),
        Center(child: BookImage()),
        SizedBox(
          height: 30,
        ),
        BookDetails(),
        SizedBox(
          height: 30,
        ),
        BookBrice(),
        YouCanAlsoLike(),
        CostumeListView()
      ],
    );
  }
}
