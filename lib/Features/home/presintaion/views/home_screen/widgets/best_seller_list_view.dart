import 'package:bookly_app/Features/home/presintaion/views/home_screen/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => BestSellerItem(),
        separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
        itemCount: 5);
  }
}
