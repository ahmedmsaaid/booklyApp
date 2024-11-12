import 'dart:ui';

import 'package:bookly_app/Features/home/presintaion/views/home_screen/widgets/home_view_body.dart';
import 'package:bookly_app/Features/home/presintaion/views/home_screen/widgets/nav_bar.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        HomeViewBody(),
        Align(alignment: Alignment.bottomCenter, child: NavBar()),
      ]),
    );
  }
}
