// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:petskin/src/features/product/model/ingredient_model.dart';
// import 'package:petskin/src/features/product/repository/product_repository.dart';
// import 'package:petskin/src/features/product/view_model/detail_product_view_model.dart';

// final ingredientProvider =
//     StateNotifierProvider<IngredientViewModel, List<IngredientModel>>((ref) {
//   // 재품 성분 int 리스트
//   final List<int> list = ref.watch(detailProductProvider).ingredient;
//   return IngredientViewModel(list);
// });

// class IngredientViewModel extends StateNotifier<List<IngredientModel>> {
//   final List<int> list;
//   final ProductRepository _repository = ProductRepository();

//   IngredientViewModel(this.list) : super(<IngredientModel>[]);

//   // 특정 제품의 성분 정보 받기
//   Future<List<IngredientModel>> getProductIngredient() async {
//     return _repository
//         .getProductIngredient(list)
//         .then((value) => state = value);
//   }
// }
