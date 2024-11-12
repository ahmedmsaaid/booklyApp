import 'package:bookly_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class SuggestionsItems extends StatelessWidget {
  const SuggestionsItems({super.key});

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
