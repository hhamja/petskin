// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailProductModel _$$_DetailProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailProductModel(
      id: json['id'] as String,
      brand: json['brand'] as String,
      productName: json['productName'] as String,
      ingredient:
          (json['ingredient'] as List<dynamic>).map((e) => e as int).toList(),
      volume: json['volume'] as String,
      price: const PriceConverter().fromJson(json['price'] as int),
      createdAt: _createdAtFromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_DetailProductModelToJson(
        _$_DetailProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'productName': instance.productName,
      'ingredient': instance.ingredient,
      'volume': instance.volume,
      'price': const PriceConverter().toJson(instance.price),
      'createdAt': _createdAtToJson(instance.createdAt),
    };
