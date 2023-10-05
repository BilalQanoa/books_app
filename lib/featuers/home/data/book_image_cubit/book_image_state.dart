

import 'package:books_app/core/models/book_model/book_model.dart';

abstract class BookImageState {}

final class BookImageInitial extends BookImageState {}
final class BookImageLoading extends BookImageState {}
final class BookImageSuccess extends BookImageState {
   final List<BookModel> books;

  BookImageSuccess(this.books);
}
final class BookImageFailuer extends BookImageState {
   final String errMessage;

  BookImageFailuer(this.errMessage);
}
