import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilis/assets.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          height: 30,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 40,
            ))
      ],
    );
  }
}
