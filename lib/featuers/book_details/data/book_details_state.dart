
import 'package:books_app/core/models/book_model/book_model.dart';

abstract class BookDetailsState {}

class BookDetailsInitial extends BookDetailsState {}
class BookDetailsLoading extends BookDetailsState {}
class BookDetailsSuccess extends BookDetailsState {
  final List<BookModel> books;
  BookDetailsSuccess(this.books);
}
class BookDetailsFailuer extends BookDetailsState {
  final String errMessage;

  BookDetailsFailuer(this.errMessage);
}