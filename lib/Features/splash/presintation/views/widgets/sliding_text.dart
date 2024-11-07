import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, child) => SlideTransition(
        child:
            Text("Read Free Books".toUpperCase(), textAlign: TextAlign.center),
        position: slideAnimation,
      ),
    );
  }
}
