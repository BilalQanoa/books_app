

import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/utlis/api_server.dart';
import 'package:books_app/featuers/home/data/book_image_cubit/book_image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookImageCubit extends Cubit<BookImageState> {
  BookImageCubit() : super(BookImageInitial());

  Future<void> getFeatuerdImageBooks () async {
    emit(BookImageLoading());
    try{
      ApiServer apiServer = ApiServer('https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = await apiServer.get();
      emit(BookImageSuccess(books));
    } catch (e){
      emit(BookImageFailuer(e.toString()));
      print(e.toString());
    }
  }
}
