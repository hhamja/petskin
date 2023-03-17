import 'package:petskin/src/features/product/model/product_model.dart';

class ProductListModel extends ProductModel {
  ProductListModel({
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

  factory ProductListModel.fromMap(map) {
    return ProductListModel(
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
