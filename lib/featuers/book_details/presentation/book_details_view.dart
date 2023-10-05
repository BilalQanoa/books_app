
import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/featuers/book_details/data/book_details_cubit.dart';
import 'package:books_app/featuers/book_details/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  static final String id = 'bookDetailsView';

  @override
  Widget build(BuildContext context) {
    BookModel bookModel  = ModalRoute.of(context)!.settings.arguments as BookModel;
    return BlocProvider(
      create: (context) => BookDetailsCubit(bookModel)..getSimilarBooks(),
      child: Scaffold(
        body: BookDetailsViewBody(bookModel: bookModel,),
      ),
    );
  }
}


