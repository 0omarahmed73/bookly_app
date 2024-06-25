import 'package:bookly/constants.dart';
import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/scaled_child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initScalingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(kDurationScreen, () => context.go(AppRouter.kHomeView));
  }

  void initScalingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    slidingAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return ScaleTransition(
            scale: slidingAnimation,
            child: const ScaledChild(),
          );
        });
  }
}
