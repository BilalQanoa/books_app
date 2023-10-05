
import 'package:books_app/core/models/book_model/volume_info.dart';

class BookModel {
  VolumeInfo? volumeInfo;


  BookModel(
      {
        this.volumeInfo,
        });

  BookModel.fromJson(Map<String, dynamic> json) {

    volumeInfo = json['volumeInfo'] != null
        ? new VolumeInfo.fromJson(json['volumeInfo'])
        : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.volumeInfo != null) {
      data['volumeInfo'] = this.volumeInfo!.toJson();
    }
    return data;
  }
}