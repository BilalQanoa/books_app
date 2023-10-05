import 'package:books_app/featuers/book_details/presentation/book_details_view.dart';
import 'package:books_app/featuers/home/presentation/home_view.dart';
import 'package:books_app/featuers/search/presentation/search_view.dart';
import 'package:books_app/featuers/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        SplashView.id: (context) => const SplashView(),
        SearchView.id : (context) => const SearchView(),
        BookDetailsView.id : (context) => const BookDetailsView(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff100B20),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
    );
  }
}
