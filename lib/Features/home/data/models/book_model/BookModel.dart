import 'package:bookly_app/Features/home/domain/entites/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "s-fJvVOZu0QC"
/// etag : "VHmNKCx8nsY"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/s-fJvVOZu0QC"
/// volumeInfo : {"title":"Goal Programing","subtitle":"A New Tool for the Christmas Tree Industry","authors":["Bruce G. Hansen"],"publishedDate":"1977","industryIdentifiers":[{"type":"OTHER","identifier":"UIUC:30112104056442"}],"readingModes":{"text":false,"image":true},"pageCount":8,"printType":"BOOK","categories":["Christmas trees"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.3.3.0.full.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=s-fJvVOZu0QC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=s-fJvVOZu0QC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=s-fJvVOZu0QC&pg=PT1&dq=programing&hl=&cd=2&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=s-fJvVOZu0QC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=s-fJvVOZu0QC"}
/// saleInfo : {"country":"EG","saleability":"FREE","isEbook":true,"buyLink":"https://play.google.com/store/books/details?id=s-fJvVOZu0QC&rdid=book-s-fJvVOZu0QC&rdot=1&source=gbs_api"}
/// accessInfo : {"country":"EG","viewability":"ALL_PAGES","embeddable":true,"publicDomain":true,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=s-fJvVOZu0QC&hl=&source=gbs_api","accessViewStatus":"FULL_PUBLIC_DOMAIN","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... <b>programing</b> 892.51--015 Keywords : Christmas trees : goal <b>programing</b> 892.51--015 Hansen , Bruce G. 1977. Goal <b>programing</b> : A new tool for the Christmas tree industry . Northeast Forest Exp . Stn . Upper Darby , Pa . 4 p . ( U.S. Dep . of&nbsp;..."}

class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
            image: volumeInfo!.imageLinks?.thumbnail ?? '',
            title: volumeInfo.title!,
            bookId: id!,
            authorName: volumeInfo.authors!.first,
            price: "0.0",
            rating: volumeInfo.maturityRating!);

  factory BookModel.fromJson(dynamic json) {
    return BookModel(
      kind: json['kind'] as String,
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo:
          json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
      searchInfo: json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}
