// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailProductModel _$DetailProductModelFromJson(Map<String, dynamic> json) {
  return _DetailProductModel.fromJson(json);
}

/// @nodoc
mixin _$DetailProductModel {
  String get id => throw _privateConstructorUsedError; // 제품 사진
// required String photoUrl,
// 브랜드 명
  String get brand => throw _privateConstructorUsedError; // 제품 이름
  String get productName => throw _privateConstructorUsedError; // 성분 리스트
  List<int> get ingredient => throw _privateConstructorUsedError; // 제품 용량
  String get volume => throw _privateConstructorUsedError; // 가격
  @PriceConverter()
  String get price => throw _privateConstructorUsedError; // 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
// required int totalScore,
// required int reivewCount,
// 제품 등록 시간
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductModelCopyWith<DetailProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductModelCopyWith<$Res> {
  factory $DetailProductModelCopyWith(
          DetailProductModel value, $Res Function(DetailProductModel) then) =
      _$DetailProductModelCopyWithImpl<$Res, DetailProductModel>;
  @useResult
  $Res call(
      {String id,
      String brand,
      String productName,
      List<int> ingredient,
      String volume,
      @PriceConverter()
          String price,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          Timestamp createdAt});
}

/// @nodoc
class _$DetailProductModelCopyWithImpl<$Res, $Val extends DetailProductModel>
    implements $DetailProductModelCopyWith<$Res> {
  _$DetailProductModelCopyWithImpl(this._value, this._then);

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
    Object? ingredient = null,
    Object? volume = null,
    Object? price = null,
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
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<int>,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailProductModelCopyWith<$Res>
    implements $DetailProductModelCopyWith<$Res> {
  factory _$$_DetailProductModelCopyWith(_$_DetailProductModel value,
          $Res Function(_$_DetailProductModel) then) =
      __$$_DetailProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brand,
      String productName,
      List<int> ingredient,
      String volume,
      @PriceConverter()
          String price,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          Timestamp createdAt});
}

/// @nodoc
class __$$_DetailProductModelCopyWithImpl<$Res>
    extends _$DetailProductModelCopyWithImpl<$Res, _$_DetailProductModel>
    implements _$$_DetailProductModelCopyWith<$Res> {
  __$$_DetailProductModelCopyWithImpl(
      _$_DetailProductModel _value, $Res Function(_$_DetailProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? productName = null,
    Object? ingredient = null,
    Object? volume = null,
    Object? price = null,
    Object? createdAt = null,
  }) {
    return _then(_$_DetailProductModel(
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
      ingredient: null == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<int>,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailProductModel implements _DetailProductModel {
  const _$_DetailProductModel(
      {required this.id,
      required this.brand,
      required this.productName,
      required final List<int> ingredient,
      required this.volume,
      @PriceConverter()
          required this.price,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required this.createdAt})
      : _ingredient = ingredient;

  factory _$_DetailProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailProductModelFromJson(json);

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
// 성분 리스트
  final List<int> _ingredient;
// 성분 리스트
  @override
  List<int> get ingredient {
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredient);
  }

// 제품 용량
  @override
  final String volume;
// 가격
  @override
  @PriceConverter()
  final String price;
// 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
// required int totalScore,
// required int reivewCount,
// 제품 등록 시간
  @override
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  final Timestamp createdAt;

  @override
  String toString() {
    return 'DetailProductModel(id: $id, brand: $brand, productName: $productName, ingredient: $ingredient, volume: $volume, price: $price, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brand,
      productName,
      const DeepCollectionEquality().hash(_ingredient),
      volume,
      price,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailProductModelCopyWith<_$_DetailProductModel> get copyWith =>
      __$$_DetailProductModelCopyWithImpl<_$_DetailProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailProductModelToJson(
      this,
    );
  }
}

abstract class _DetailProductModel implements DetailProductModel {
  const factory _DetailProductModel(
      {required final String id,
      required final String brand,
      required final String productName,
      required final List<int> ingredient,
      required final String volume,
      @PriceConverter()
          required final String price,
      @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required final Timestamp createdAt}) = _$_DetailProductModel;

  factory _DetailProductModel.fromJson(Map<String, dynamic> json) =
      _$_DetailProductModel.fromJson;

  @override
  String get id;
  @override // 제품 사진
// required String photoUrl,
// 브랜드 명
  String get brand;
  @override // 제품 이름
  String get productName;
  @override // 성분 리스트
  List<int> get ingredient;
  @override // 제품 용량
  String get volume;
  @override // 가격
  @PriceConverter()
  String get price;
  @override // 평점 점수의 총합
// 나중에 총 수/ 리뷰 수 = 평균 평점 구현
// required int totalScore,
// required int reivewCount,
// 제품 등록 시간
  @JsonKey(fromJson: _createdAtFromJson, toJson: _createdAtToJson)
  Timestamp get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DetailProductModelCopyWith<_$_DetailProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
