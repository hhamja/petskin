import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:petskin/src/config/constant/firebase_constant.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';

class ProductRepository {
  final _productRef =
      FirebaseFirestore.instance.collection(FirebaseConstant.productCollection);

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

  // 제품 성분 정보 바딕
  //
}
