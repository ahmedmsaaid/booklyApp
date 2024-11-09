import 'package:bookly_app/Features/home/presintaion/views/home_screen/widgets/title.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'costume_list_view.dart';
import 'cousteme_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomeAppBar(),
                SizedBox(
                  height: 15,
                ),
                CostumeListView(),
                SizedBox(
                  height: 20,
                ),
                TitleWidget(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
