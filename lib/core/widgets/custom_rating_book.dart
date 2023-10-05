import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 14,),
        SizedBox(width: 6,),
        CustomTextWidget(text: '${bookModel.volumeInfo!.averageRating}', size: 16,),
        SizedBox(width: 6,),
        Opacity(
          opacity: 0.5,
            child: CustomTextWidget(text: '(${bookModel.volumeInfo!.ratingsCount})', size: 14,)
        ),
      ],
    );
  }
}
