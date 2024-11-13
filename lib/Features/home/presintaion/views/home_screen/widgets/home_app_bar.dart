import 'package:bookly_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 25,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 40,
              ))
        ],
      ),
    );
  }
}
