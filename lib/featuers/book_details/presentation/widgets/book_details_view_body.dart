import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/widgets/custom_book_image.dart';
import 'package:books_app/core/widgets/custom_rating_book.dart';
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/book_details/data/book_details_cubit.dart';
import 'package:books_app/featuers/book_details/data/book_details_state.dart';
import 'package:books_app/featuers/book_details/presentation/widgets/action_button.dart';
import 'package:books_app/featuers/book_details/presentation/widgets/book_details_app_bar.dart';
import 'package:books_app/featuers/book_details/presentation/widgets/row_of_actions_button.dart';
import 'package:books_app/featuers/book_details/presentation/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookDetailsAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height * (250/812),
            child: CustomBookImage(bookModel: bookModel)
        ),
        SizedBox(height: 24,),
        CustomTextWidget(
            text: bookModel.volumeInfo!.title!,
          fontFamily: 'GT-Sectra',
          size: 24,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4,),
        Opacity(
          opacity: 0.7,
          child: CustomTextWidget(
            text: bookModel.volumeInfo!.authors![0]!,
            fontFamily: 'GT-Sectra',
            size: 18,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 4,),
        CustomRatingBook(bookModel: bookModel),
        SizedBox(height: 24,),
        RowOfActionsButton(),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              CustomTextWidget(text: 'You can also like', size: 18,),
            ],
          ),
        ),
        SizedBox(height: 12,),
        SimilarBooksListView(),
      ],
    );
  }
}







