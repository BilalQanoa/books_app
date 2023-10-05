import 'package:books_app/featuers/book_details/presentation/widgets/action_button.dart';
import 'package:flutter/material.dart';

class RowOfActionsButton extends StatelessWidget {
  const RowOfActionsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionButton(
          text: 'Free',
          color: Colors.black,
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        ActionButton(
          text: 'Free preview',
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
          containerColor: Color(0xffEF8262),
        ),
      ],
    );
  }
}