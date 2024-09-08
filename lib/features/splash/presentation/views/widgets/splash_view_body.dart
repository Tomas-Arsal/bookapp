
import 'package:bookapp/features/splash/presentation/views/widgets/slider_text_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/Assets.dart';
import '../../../../home/presentation/views/Widgets/home_screen.dart';

class SplashViewBody extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetData.logo),
          const SizedBox(
            height: 7,
          ),
          SlidingText(slidingAnimation: slideAnimation),
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() =>  HomeScreen(),
          // calculations
          transition: Transition.fade,
          duration: kDurationOfAnimation);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slideAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}
