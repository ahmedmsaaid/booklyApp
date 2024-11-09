import 'package:flutter/material.dart';

import '../../../../../core/utilis/assets.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
        ));
  }
}
