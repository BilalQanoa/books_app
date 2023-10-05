import 'package:books_app/featuers/home/presentation/widgets/books_image_list_view.dart';
import 'package:books_app/featuers/home/presentation/widgets/home_view_app_bar.dart';
import 'package:books_app/featuers/home/presentation/widgets/last_book_text.dart';
import 'package:books_app/featuers/home/presentation/widgets/last_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {

  const HomeViewBody({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        HomeViewAppBar(),
        BooksImageListView(),
        LastBookText(),
        LastBooksListView(),
      ],
    );
  }
}











