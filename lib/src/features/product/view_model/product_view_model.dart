import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';
import 'package:petskin/src/features/product/repository/product_repository.dart';

final productListProvider =
    StateNotifierProvider<ProductListViewModel, List<ProductListModel>>(
  (ref) => ProductListViewModel(),
);

class ProductListViewModel extends StateNotifier<List<ProductListModel>> {
  ProductListViewModel() : super([]);
  final ProductRepository _repository = ProductRepository();
  // 제품 리스트 GET
  Future getProductList() async {
    return _repository.getProductList().then((value) => state = value);
  }
}
