import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/supabase_constant.dart';
import 'package:petskin/src/features/product/model/detail_product_model.dart';
import 'package:petskin/src/features/product/model/ingredient_model.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import 'package:shared_preferences/shared_preferences.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});

class ProductRepository {
  final _productRef = Supabase.instance.client.from(SupabseConstant.productRef);
  final _ingredientEditRequestRef =
      Supabase.instance.client.from(SupabseConstant.ingredientEditRequestRef);
  final _productIngredientRef =
      Supabase.instance.client.from(SupabseConstant.productIngredientRef);

  // 제품 리스트 받기
  Future<List<ProductListModel>> getProductList() async {
    final List response = await _productRef.select().limit(5);

    final List<ProductListModel> productList =
        response.map((e) => ProductListModel.fromJson(e)).toList();

    return productList;
  }

  // 특정 제품 세부 정보 받기
  Future<DetailProductModel> getDetailProduct(id) async {
    final Map<String, dynamic> response =
        await _productRef.select().eq('id', id).single();

    final DetailProductModel detailProduct =
        DetailProductModel.fromJson(response);

    return detailProduct;
  }

  // 특정 제품의 성분 정보 받기
  Future<List<IngredientModel>> getProductIngredient(id) async {
    final List response = await _productIngredientRef
        .select('ingredient!inner(*)')
        .eq('product_id', id)
        .order('id', ascending: true);

    final List<IngredientModel> ingredientList = response.map((e) {
      final Map<String, dynamic> ingredient = e['ingredient'];
      return IngredientModel.fromJson(ingredient);
    }).toList();

    return ingredientList;
  }

  // 최근 검색어 로컬에 List로 저장
  Future<List<String>> addSearchQuery(String query) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? searchList = prefs.getStringList('searchList');
    if (searchList == null) {
      searchList = [query];
    } else {
      searchList.insert(0, query);
    }
    await prefs.setStringList('searchList', searchList);

    return searchList;
  }

  // 최근 검색어 받기
  Future<List<String>> getSearchList() async {
    final prefs = await SharedPreferences.getInstance();
    // 없다면 null반환, 있다면 리스트 반환
    List<String>? searchList = prefs.getStringList('searchList');
    // null이면 ? 빈 리스트 반환
    searchList ??= [];
    return searchList;
  }

  // 특정 최근 검색어 index 제거
  Future<List<String>> removeSearchIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> searchList = prefs.getStringList('searchList') ?? [];
    searchList.removeAt(index);
    await prefs.setStringList('searchList', searchList);
    return searchList;
  }

  // 특정 최근 검색어 index 제거
  Future removeAllSearchIndex() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('searchList');
  }

  // 제품 데이터 검색하기
  Future<List<ProductListModel>> searchProduct(String query) async {
    // ignore: unnecessary_string_interpolations
    final String formattedQuery = "${query.split(' ').join('&')}";

    final List response = await _productRef
        .select()
        .textSearch("brand_productname", formattedQuery);
    final List<ProductListModel> searchProductList =
        response.map((e) => ProductListModel.fromJson(e)).toList();

    return searchProductList;
  }

  // 성분 수정 요청
  Future addIngredientEditRequest(brand, productname) async {
    await _ingredientEditRequestRef
        .insert({'productname': '$brand $productname'});
  }
}
