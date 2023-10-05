import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/home/data/last_books_cubit/last_books_cubit.dart';
import 'package:books_app/featuers/home/data/last_books_cubit/last_books_state.dart';
import 'package:books_app/featuers/home/presentation/widgets/last_book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastBooksListView extends StatelessWidget {
  const LastBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LastBooksCubit, LastBooksState>(
      builder: (context, state){
        if (state is LastBooksSuccess){
          return SliverList.builder(
            itemCount: state.books.length,
              itemBuilder:(context, index){
                  return  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, left: 30),
                    child: LastBookDetailsItem(bookModel: state.books[index],),
                  );
              }
          );
        }
        else if (state is LastBooksFailuer){
          return SliverToBoxAdapter(
            child: Center(
              child: CustomTextWidget(text: state.errMessage),
            ),
          );
        }
        else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}