import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/featuers/book_details/presentation/book_details_view.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BookDetailsView.id, arguments: bookModel);
      },
      child: AspectRatio(
        aspectRatio: 165 / 225,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            bookModel.volumeInfo?.imageLinks?.thumbnail ??
                'https://static.vecteezy.com/system/resources/previews/004/141/669/original/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
