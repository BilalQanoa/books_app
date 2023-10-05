import 'package:books_app/core/widgets/custom_text_widget.dart';
import 'package:books_app/featuers/search/presentation/widgets/search_results_list_view.dart';
import 'package:books_app/featuers/search/presentation/widgets/search_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SearchTextFormField(),
        ),
        SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: CustomTextWidget(text: 'Search results'),
        ),
        SizedBox(height: 24,),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

