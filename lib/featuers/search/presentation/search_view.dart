import 'package:books_app/featuers/search/data/search_results_cubit/search_results_cubit.dart';
import 'package:books_app/featuers/search/presentation/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static final String id = 'searchView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchResultsCubit(),
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
