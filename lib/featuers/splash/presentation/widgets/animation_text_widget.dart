import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class AnimationTextWidget extends StatelessWidget {
  const AnimationTextWidget({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return SlideTransition(
            position: animation,
            child: const CustomTextWidget(text: 'Read Free Books', textAlign: TextAlign.center,),
          );
        });
  }
}
