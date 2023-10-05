
import 'package:books_app/core/models/book_model/book_model.dart';
import 'package:dio/dio.dart';

class ApiServer {

  final Dio _dio = Dio();
  final String url;

  ApiServer(this.url);

  Future<List<BookModel>> get () async {
    Response response = await _dio.get(url);
    Map <String, dynamic> json = response.data;
    List<BookModel> books = [];
    for (var bookData in json['items']){
      BookModel book = BookModel.fromJson(bookData);
      books.add(book);
    }
    return books;
  }
}