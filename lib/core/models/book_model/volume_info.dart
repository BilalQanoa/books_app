import 'package:books_app/core/models/book_model/image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  List<String>? categories;
  num? averageRating;
  num? ratingsCount;
  ImageLinks? imageLinks;
  String? previewLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.imageLinks,
    this.previewLink,
  });

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'] == null ? json['authors'].cast<String>() : [''];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['authors'] = authors;
    data['categories'] = categories;
    data['averageRating'] = averageRating;
    data['ratingsCount'] = ratingsCount;
    if (imageLinks != null) {
      data['imageLinks'] = imageLinks!.toJson();
    }
    data['previewLink'] = previewLink;
    return data;
  }
}
