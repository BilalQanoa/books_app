import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/utlis/api_server.dart';
import 'package:books_app/featuers/home/data/last_books_cubit/last_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastBooksCubit extends Cubit<LastBooksState> {
  LastBooksCubit() : super(LastBooksInitial());

  Future<void> getLastBooksDetails () async {
    emit(LastBooksLoading());
    try{
      ApiServer apiServer = ApiServer('https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = await apiServer.get();
      emit(LastBooksSuccess(books));
    } catch (e){
      emit(LastBooksFailuer(e.toString()));
      print(e.toString());
    }
  }
}
