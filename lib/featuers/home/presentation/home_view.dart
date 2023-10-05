
import 'package:books_app/featuers/home/data/book_image_cubit/book_image_cubit.dart';
import 'package:books_app/featuers/home/data/last_books_cubit/last_books_cubit.dart';
import 'package:books_app/featuers/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BookImageCubit()..getFeatuerdImageBooks()),
        BlocProvider(create: (context) => LastBooksCubit()..getLastBooksDetails()),
      ],
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}


