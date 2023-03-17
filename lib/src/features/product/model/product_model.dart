import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ProductModel {
  final String id;
  // 제품 사진
  final String photoUrl;
  // 브랜드
  final String brand;
  // 제품명
  final String productName;
  // // 제품 설명
  // final String description;
  // 제품 용량
  final String volume;
  // 제품 가격
  final String price;
  // 평점 점수의 총합
  // 나중에 총 수/ 리뷰 수 = 평균 평점 구현
  final int totalScore;
  final int reivewCount;
  // 서버에 등록시간
  final Timestamp createdAt;

  ProductModel({
    required this.id,
    required this.photoUrl,
    required this.brand,
    required this.productName,
    // required this.description,
    required this.volume,
    required this.price,
    required this.totalScore,
    required this.reivewCount,
    required this.createdAt,
  });
}
