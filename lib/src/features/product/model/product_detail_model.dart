import 'package:petskin/src/features/product/model/product_model.dart';

class DetailProductModel extends ProductModel {
  DetailProductModel({
    required super.id,
    required super.photoUrl,
    required super.brand,
    required super.productName,
    required super.volume,
    required super.price,
    required super.totalScore,
    required super.reivewCount,
    required super.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'photoUrl': photoUrl,
      'brand': brand,
      'productName': productName,
      'volume': volume,
      'price': price,
      'totalScore': totalScore,
      'reivewCount': reivewCount,
      'createdAt': createdAt,
    };
  }

  factory DetailProductModel.fromMap(map) {
    return DetailProductModel(
      id: map['id'],
      photoUrl: map['photoUrl'],
      brand: map['brand'],
      productName: map['productName'],
      volume: map['volume'],
      price: map['price'],
      totalScore: map['totalScore'],
      reivewCount: map['reivewCount'],
      createdAt: map['createdAt'],
    );
  }
}
