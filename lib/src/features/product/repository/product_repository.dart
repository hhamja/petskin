import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/firebase_constant.dart';
import 'package:petskin/src/features/product/model/detail_product_model.dart';
import 'package:petskin/src/features/product/model/ingredient_model.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});

class ProductRepository {
  final _productRef =
      FirebaseFirestore.instance.collection(FirebaseConstant.productCollection);
  final _ingredientRef = FirebaseFirestore.instance
      .collection(FirebaseConstant.ingredientCollection);

  // 제품 리스트 받기
  Future<List<ProductListModel>> getProductList() async {
    return _productRef
        .orderBy('createdAt', descending: true)
        .limit(20)
        .get()
        .then((snapshot) => snapshot.docs
            .map((e) => ProductListModel.fromJson(e.data()))
            .toList());
  }

  // 특정 제품 세부 정보 받기
  Future<DetailProductModel> getDetailProduct(id) async {
    return _productRef
        .doc(id)
        .get()
        .then((value) => DetailProductModel.fromJson(
              value.data() as Map<String, dynamic>,
            ));
  }

  // 특정 제품의 성분 정보 받기
  Future<List<IngredientModel>> getProductIngredient(
      List<int> ingredientIds) async {
    final List<String> stringList =
        ingredientIds.map((i) => i.toString()).toList();
    return _ingredientRef
        .where(FieldPath.documentId, whereIn: stringList)
        .get()
        .then((snapshot) => snapshot.docs
            .map((doc) => IngredientModel.fromJson(doc.data()))
            .toList());
    // }
    // List<IngredientModel> modelList = [];
    // for (var e in list) {
    //   await _ingredientRef.doc(e.toString()).get().then(
    //         (value) => modelList.add(
    //           IngredientModel.fromJson(value.data() as Map<String, dynamic>),
    //         ),
    //       );
    // }

    // return modelList;
  }
}
