// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListModel _$$_ProductListModelFromJson(Map<String, dynamic> json) =>
    _$_ProductListModel(
      id: json['id'] as String,
      brand: json['brand'] as String,
      productName: json['productName'] as String,
      volume: json['volume'] as String,
      price: const PriceConverter().fromJson(json['price'] as int),
      totalScore: json['totalScore'] as int,
      reivewCount: json['reivewCount'] as int,
      createdAt: _createdAtFromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_ProductListModelToJson(_$_ProductListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'productName': instance.productName,
      'volume': instance.volume,
      'price': const PriceConverter().toJson(instance.price),
      'totalScore': instance.totalScore,
      'reivewCount': instance.reivewCount,
      'createdAt': _createdAtToJson(instance.createdAt),
    };
