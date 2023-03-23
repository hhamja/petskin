import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';
import 'package:petskin/src/features/product/repository/product_repository.dart';

final productListProvider =
    FutureProvider.autoDispose<List<ProductListModel>>((ref) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);

  // 제품 리스트 GET
  final productList = await repository.getProductList();

  return productList;
});
