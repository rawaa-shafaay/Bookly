import 'package:bookly/core/constants/app_assets.dart';
import 'package:bookly/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        AnimatedBuilder(
          animation: _slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: _slidingAnimation,
              child: const Text('Read Free Books', textAlign: TextAlign.center),
            );
          },
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _slidingAnimation = Tween<Offset>(
      begin: Offset(0, 20),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void navigateToHome() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const HomeView(),
          ),
        );
      });
    });
  }
}
