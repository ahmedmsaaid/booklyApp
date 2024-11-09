import 'package:bookly_app/Features/home/presintaion/views/home_screen/home_screen.dart';
import 'package:bookly_app/Features/splash/presintation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../constance.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logo(),
        const SizedBox(
          height: 20,
        ),
        slidingText(slideAnimation: slideAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => HomeView(),
          transition: Transition.fadeIn, duration: kPrimaryDur);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    slideAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}

Widget logo() {
  return SvgPicture.asset(
    AssetsData.logo,
    height: 75,
  );
}
