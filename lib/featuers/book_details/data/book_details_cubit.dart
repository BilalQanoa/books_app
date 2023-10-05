import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/utlis/api_server.dart';
import 'package:books_app/featuers/book_details/data/book_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.bookModel) : super(BookDetailsInitial());

  final BookModel bookModel;

  Future<void> getSimilarBooks() async {
    emit(BookDetailsLoading());
    try{
      ApiServer apiServer = ApiServer(
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:${bookModel.volumeInfo!.categories![0]}&Sorting=relevance');
      List<BookModel> books = await apiServer.get();
      emit(BookDetailsSuccess(books));
    } catch (e){
      emit(BookDetailsFailuer(e.toString()));
      print(e.toString());
    }
  }
}
