import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.text,
    this.topLeft = Radius.zero,
    this.bottomLeft = Radius.zero,
    this.topRight = Radius.zero,
    this.bottomRight = Radius.zero,
    this.color,
    this.containerColor = Colors.white,
  });

  final String text;
  final Radius topLeft;
  final Radius bottomLeft;
  final Radius topRight;
  final Radius bottomRight;
  final Color? color;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (150/375),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: topLeft,
          bottomLeft: bottomLeft,
          topRight: topRight,
          bottomRight: bottomRight,
        ),
        color:  containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0,),
        child: CustomTextWidget(
          text: text,
          size: 18,
          color: color,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}