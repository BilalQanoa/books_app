import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/widgets/custom_book_image.dart';
import 'package:books_app/core/widgets/custom_rating_book.dart';
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class LastBookDetailsItem extends StatelessWidget {
  const LastBookDetailsItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * (113 / 812),
          child: CustomBookImage(
            bookModel: bookModel,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * (207 / 375),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: '${bookModel.volumeInfo!.title}',
                fontFamily: 'GT-Sectra',
              ),
              const SizedBox(
                height: 8,
              ),
              Opacity(
                opacity: 0.7,
                child: CustomTextWidget(
                  text: bookModel.volumeInfo!.authors![0],
                  fontFamily: 'GT-Sectra',
                  size: 14,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const CustomTextWidget(
                    text: 'Free',
                    fontWeight: FontWeight.bold,
                  ),
                  const Expanded(child: SizedBox()),
                  CustomRatingBook(
                    bookModel: bookModel,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
