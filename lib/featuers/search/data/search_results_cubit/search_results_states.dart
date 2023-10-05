
import 'package:books_app/core/models/book_model/book_model.dart';

abstract class SearchResultsState {}

class SearchResultInitial extends SearchResultsState {}
class SearchResultLoading extends SearchResultsState {}
class SearchResultSuccess extends SearchResultsState {
  final List<BookModel> books;
  SearchResultSuccess(this.books);
}
class SearchResultFailuer extends SearchResultsState {
  final String errMessage;

  SearchResultFailuer(this.errMessage);
}