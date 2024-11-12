import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLike extends StatelessWidget {
  const YouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Text(
        "You can also like",
        style: Styles.bodyStyle,
      ),
    );
  }
}
