import 'package:books_app/featuers/search/data/search_results_cubit/search_results_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextFormField(
        onChanged: (value) {
          BlocProvider.of<SearchResultsCubit>(context).getSearchResults(value: value);
        },
        decoration: InputDecoration(
            hintText: 'search',
            suffixIcon: Icon(Icons.search_outlined),
            border: OutlineInputBorder()
        ),
      ),
    );
  }
}