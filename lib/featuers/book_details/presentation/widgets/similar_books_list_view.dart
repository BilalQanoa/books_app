import 'package:books_app/core/widgets/custom_book_image.dart';
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/book_details/data/book_details_cubit.dart';
import 'package:books_app/featuers/book_details/data/book_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <BookDetailsCubit, BookDetailsState>(
        builder: (context, state){
          if (state is BookDetailsSuccess){
            return  SizedBox(
              height: MediaQuery.of(context).size.height * (132/812),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 6, bottom: 8),
                      child: CustomBookImage(bookModel: state.books[index]),
                    );
                  }
              ),
            );
          }
          else if (state is BookDetailsFailuer){
            return Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Opacity(
                opacity: 0.6,
                child: Center(
                  child: CustomTextWidget(text: 'no results'),
                ),
              ),
            );
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }
}