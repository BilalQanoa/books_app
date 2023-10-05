import 'package:books_app/constraints.dart';
import 'package:books_app/featuers/search/presentation/search_view.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(
                  kImageLogo,
                ),
                height: 18,
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, SearchView.id);
                },
                icon: Icon(Icons.search_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}