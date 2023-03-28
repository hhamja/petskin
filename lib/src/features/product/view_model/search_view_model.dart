import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';
import 'package:petskin/src/features/product/repository/product_repository.dart';

final searchListProvider =
    StateNotifierProvider<SearchListNotifier, List<String>>(
        (ref) => SearchListNotifier(ref.watch(productRepositoryProvider)));

// 최근 검색어 StateNotifier
class SearchListNotifier extends StateNotifier<List<String>> {
  final ProductRepository repository;
  SearchListNotifier(this.repository) : super([]);

  // 검색 내용 로컬에 추가
  Future addSearchQuery(query) async {
    state = await repository.addSearchQuery(query);
  }

  // 최근검색 리스트 받기
  Future getSearchList() async {
    state = await repository.getSearchList();
  }

  // 특정 최근 검색 항목 삭제
  Future removeSearchIndex(index) async {
    state = await repository.removeSearchIndex(index);
  }

  // 최근검색기록 전부 삭제
  Future removeAllSearchIndex() async {
    state = await repository.removeAllSearchIndex() ?? [];
  }
}

final searchProductListProvider = FutureProvider.autoDispose
    .family<List<ProductListModel>, String>((ref, query) async {
  final ProductRepository repository = ref.watch(productRepositoryProvider);

  // 검색 제품 리스트 받기
  final searchProductList =   await repository.searchProduct(query);
  return searchProductList;
});
