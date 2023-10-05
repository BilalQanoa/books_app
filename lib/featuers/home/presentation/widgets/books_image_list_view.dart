import 'package:books_app/core/widgets/custom_book_image.dart';
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/home/data/book_image_cubit/book_image_cubit.dart';
import 'package:books_app/featuers/home/data/book_image_cubit/book_image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksImageListView extends StatelessWidget {
  const BooksImageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder <BookImageCubit, BookImageState>(
        builder: (context, state){
          if (state is BookImageSuccess){
            return SizedBox(
              height: MediaQuery.of(context).size.height * (225/812),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context , index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CustomBookImage(
                        bookModel: state.books[index],
                      ),
                    );
                  }
              ),
            );
          }
          else if (state is BookImageFailuer){
            return Center(
              child: CustomTextWidget(text: state.errMessage),
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}