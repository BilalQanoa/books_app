

import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';


abstract class LastBooksState extends Equatable {
  const LastBooksState();

  @override
  List<Object> get props => [];
}

final class LastBooksInitial extends LastBooksState {}
final class LastBooksLoading extends LastBooksState {}
final class LastBooksSuccess extends LastBooksState {
  final List<BookModel> books;

  LastBooksSuccess(this.books);
}
final class LastBooksFailuer extends LastBooksState {
  final String errMessage;

  LastBooksFailuer(this.errMessage);
}
