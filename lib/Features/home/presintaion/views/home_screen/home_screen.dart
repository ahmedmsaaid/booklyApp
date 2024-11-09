import 'dart:ui';

import 'package:bookly_app/Features/home/presintaion/views/home_screen/widgets/home_view_body.dart';
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(25),
              color: Colors.white.withOpacity(0.3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(AssetsData.books, true, false),
                    _buildNavItem(AssetsData.Saved, false, false),
                    _buildNavItem(AssetsData.Audio, false, false),
                    _buildNavItem(AssetsData.Profile, false, true),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildNavItem(String icon, bool isSelected, bool profile) {
    return InkWell(
      onTap: () {},
      child: Visibility(
        visible: !profile,
        replacement: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
                child: ClipOval(child: SvgPicture.asset(icon, height: 40))),
            const SizedBox(height: 4),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
              ),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: 4),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
