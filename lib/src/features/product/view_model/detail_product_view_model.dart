import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/product/model/detail_product_model.dart';
import 'package:petskin/src/features/product/model/ingredient_model.dart';
import 'package:petskin/src/features/product/repository/product_repository.dart';

// 특정 제품 세부정보 받는 FutureProvider
final productDetailProvider = FutureProvider.autoDispose
    .family<DetailProductModel, String>((ref, productId) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);

  final detailProduct = await repository.getDetailProduct(productId);
  return detailProduct;
});

// 특정 제품의 성분정보 받는 FutureProvider
final ingredientProvider = FutureProvider.autoDispose
    .family<List<IngredientModel>, String>((ref, productId) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);
  // 특정 제품의 성분 정보 받기
  final ingredientList = await repository.getProductIngredient(productId);
  return ingredientList;
});

Future x() async {}
