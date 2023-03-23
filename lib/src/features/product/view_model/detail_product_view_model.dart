import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';
import 'package:petskin/src/features/product/model/detail_product_model.dart';
import 'package:petskin/src/features/product/model/ingredient_model.dart';
import 'package:petskin/src/features/product/repository/product_repository.dart';

final productDetailProvider = FutureProvider.autoDispose
    .family<Tuple2<DetailProductModel, List<IngredientModel>>, String>(
        (ref, productId) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);
  // 제품 세부정보 받기
  final productDetail = await repository.getDetailProduct(productId);
  // 제품의 성분 리스트 받기
  final ingredientList =
      await repository.getProductIngredient(productDetail.ingredient);
  final tuple2 = Tuple2<DetailProductModel, List<IngredientModel>>(
    productDetail,
    ingredientList,
  );
  return tuple2;
});

// final xyz = FutureProvider.autoDispose
//     .family<DetailProductModel, String>((ref, productId) async {
//   final ProductRepository repository = ref.watch(productRepositoryProvider);

//   // 특정 제품 세부정보 받기
//   final detailProduct = await repository.getDetailProduct(productId);
//   return detailProduct;
// });

// final ingredientProvider = FutureProvider.autoDispose
//     .family<List<IngredientModel>, List<int>>((ref, list) async {
//   final ProductRepository repository = ref.watch(productRepositoryProvider);
//   // 특정 제품의 성분 정보 받기
//   final ingredientList = await repository.getProductIngredient(list);
//   return ingredientList;
// });
