
import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/home/presentation/widgets/last_book_details_item.dart';
import 'package:books_app/featuers/search/data/search_results_cubit/search_results_cubit.dart';
import 'package:books_app/featuers/search/data/search_results_cubit/search_results_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultsCubit, SearchResultsState>(
        builder: (context, state){
          if (state is SearchResultSuccess){
            return ListView.builder(
                itemCount: state.books.length,
                itemBuilder:(context, index){
                  return  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, left: 16),
                    child: LastBookDetailsItem(bookModel: state.books[index],),
                  );
                }
            );
          }
          else if (state is SearchResultFailuer){
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
          else if (state is SearchResultLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: Opacity(
                  opacity: 0.6,
                    child: CustomTextWidget(text: 'search for results',)
                ),
              ),
            );
          }
        }
    );
  }
}
