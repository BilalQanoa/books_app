import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class LastBookText extends StatelessWidget {
  const LastBookText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, bottom: 24, top: 48),
        child: Row(
          children: [
            CustomTextWidget(
              text: 'Last Books',
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}