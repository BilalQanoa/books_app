import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:books_app/core/utlis/api_server.dart';
import 'package:books_app/featuers/search/data/search_results_cubit/search_results_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsCubit extends Cubit<SearchResultsState> {
  SearchResultsCubit() : super(SearchResultInitial());

  Future<void> getSearchResults({required String value}) async {
    emit(SearchResultLoading());
    try{
    ApiServer apiServer = ApiServer(
        'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:$value&Sorting=relevance');
    List<BookModel> books = await apiServer.get();
    emit(SearchResultSuccess(books));
    } catch (e){
      emit(SearchResultFailuer(e.toString()));
      print(e.toString());
    }
  }
}
