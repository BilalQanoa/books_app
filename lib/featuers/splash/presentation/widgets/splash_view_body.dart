import 'package:books_app/featuers/home/presentation/home_view.dart';
import 'package:books_app/featuers/splash/presentation/widgets/animation_text_widget.dart';
import 'package:books_app/featuers/splash/presentation/widgets/splash_view_logo_image.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    doAnimation();
    navigateTo();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SplashViewLogoImage(),
        const SizedBox(
          height: 24,
        ),
        AnimationTextWidget(animation: animation),
      ],
    );
  }

  void doAnimation() {
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween(begin: const Offset(0, 30), end: const Offset(0, 0))
        .animate(controller);
    controller.forward();
  }

  Future<void> navigateTo() {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, HomeView.id);
      },
    );
  }
}
