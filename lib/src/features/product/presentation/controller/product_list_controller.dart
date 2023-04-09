import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/product/data/product_repository.dart';
import 'package:petskin/src/features/product/domain/product_list_model.dart';

final productListProvider = FutureProvider<List<ProductListModel>>((ref) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);

  // 제품 리스트 GET
  final productList = await repository.getProductList();

  return productList;
});
