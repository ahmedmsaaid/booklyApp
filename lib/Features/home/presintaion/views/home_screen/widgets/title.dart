import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        "Best Seller",
        textAlign: TextAlign.start,
        style: Styles.bodyStyle,
      ),
    );
  }
}
