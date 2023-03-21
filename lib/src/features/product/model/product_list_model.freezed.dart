// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListModel _$ProductListModelFromJson(Map<String, dynamic> json) {
  return _ProductListModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListModel {
  String get id => throw _privateConstructorUsedError; // 제품 사진
// required String photoUrl,
// 브랜드 명
  String get brand => throw _privateConstructorUsedError; // 제품 이름
  String get productName => throw _privateConstructorUsedError; // 제품 용량
  String get volume => throw _privateConstructorUsedError; // 가격
  @PriceConverter()
  String get price => throw _privateConstructorUsedError; // 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
  int get totalScore => throw _privateConstructorUsedError;
  int get reivewCount => throw _privateConstructorUsedError; // 제품 등록 시간
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListModelCopyWith<ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListModelCopyWith<$Res> {
  factory $ProductListModelCopyWith(
          ProductListModel value, $Res Function(ProductListModel) then) =
      _$ProductListModelCopyWithImpl<$Res, ProductListModel>;
  @useResult
  $Res call(
      {String id,
      String brand,
      String productName,
      String volume,
      @PriceConverter()
          String price,
      int totalScore,
      int reivewCount,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          Timestamp createdAt});
}

/// @nodoc
class _$ProductListModelCopyWithImpl<$Res, $Val extends ProductListModel>
    implements $ProductListModelCopyWith<$Res> {
  _$ProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? productName = null,
    Object? volume = null,
    Object? price = null,
    Object? totalScore = null,
    Object? reivewCount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      reivewCount: null == reivewCount
          ? _value.reivewCount
          : reivewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListModelCopyWith<$Res>
    implements $ProductListModelCopyWith<$Res> {
  factory _$$_ProductListModelCopyWith(
          _$_ProductListModel value, $Res Function(_$_ProductListModel) then) =
      __$$_ProductListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brand,
      String productName,
      String volume,
      @PriceConverter()
          String price,
      int totalScore,
      int reivewCount,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          Timestamp createdAt});
}

/// @nodoc
class __$$_ProductListModelCopyWithImpl<$Res>
    extends _$ProductListModelCopyWithImpl<$Res, _$_ProductListModel>
    implements _$$_ProductListModelCopyWith<$Res> {
  __$$_ProductListModelCopyWithImpl(
      _$_ProductListModel _value, $Res Function(_$_ProductListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? productName = null,
    Object? volume = null,
    Object? price = null,
    Object? totalScore = null,
    Object? reivewCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ProductListModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      reivewCount: null == reivewCount
          ? _value.reivewCount
          : reivewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListModel implements _ProductListModel {
  const _$_ProductListModel(
      {required this.id,
      required this.brand,
      required this.productName,
      required this.volume,
      @PriceConverter()
          required this.price,
      required this.totalScore,
      required this.reivewCount,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required this.createdAt});

  factory _$_ProductListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListModelFromJson(json);

  @override
  final String id;
// 제품 사진
// required String photoUrl,
// 브랜드 명
  @override
  final String brand;
// 제품 이름
  @override
  final String productName;
// 제품 용량
  @override
  final String volume;
// 가격
  @override
  @PriceConverter()
  final String price;
// 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
  @override
  final int totalScore;
  @override
  final int reivewCount;
// 제품 등록 시간
  @override
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'ProductListModel(id: $id, brand: $brand, productName: $productName, volume: $volume, price: $price, totalScore: $totalScore, reivewCount: $reivewCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.reivewCount, reivewCount) ||
                other.reivewCount == reivewCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, brand, productName, volume,
      price, totalScore, reivewCount, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListModelCopyWith<_$_ProductListModel> get copyWith =>
      __$$_ProductListModelCopyWithImpl<_$_ProductListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListModelToJson(
      this,
    );
  }
}

abstract class _ProductListModel implements ProductListModel {
  const factory _ProductListModel(
      {required final String id,
      required final String brand,
      required final String productName,
      required final String volume,
      @PriceConverter()
          required final String price,
      required final int totalScore,
      required final int reivewCount,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required final Timestamp createdAt}) = _$_ProductListModel;

  factory _ProductListModel.fromJson(Map<String, dynamic> json) =
      _$_ProductListModel.fromJson;

  @override
  String get id;
  @override // 제품 사진
// required String photoUrl,
// 브랜드 명
  String get brand;
  @override // 제품 이름
  String get productName;
  @override // 제품 용량
  String get volume;
  @override // 가격
  @PriceConverter()
  String get price;
  @override // 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
  int get totalScore;
  @override
  int get reivewCount;
  @override // 제품 등록 시간
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  Timestamp get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListModelCopyWith<_$_ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
