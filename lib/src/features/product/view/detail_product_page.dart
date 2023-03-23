import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/firebase_constant.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/core/component/loading/circular_loading.dart';
import 'package:petskin/src/features/product/component/detail_product.dart';
import 'package:petskin/src/features/product/component/product_ingredient.dart';
import 'package:petskin/src/features/product/view_model/detail_product_view_model.dart';

class DetailProductPage extends ConsumerWidget {
  final String id;
  const DetailProductPage({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(id));

    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        actions: [
          InkWell(
            onTap: () async {
              context.router.push(const SearchRoute());
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Icon(CupertinoIcons.search),
            ),
          ),
        ],
      ),
      body: product.when(
        error: (error, stackTrace) => const Center(
          child: Text('에러입니다'),
        ),
        loading: () => const CustomCircularLoading(),
        data: (data) => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 제품 사진
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Image.network(FirebaseConstant.productImg)),
              ProductDetailBox(
                brand: data.item1.brand,
                price: data.item1.price,
                productName: data.item1.productName,
                volume: data.item1.volume,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 29.0),
                child: Divider(
                  color: LIGHT_GREY_COLOR,
                  thickness: 5,
                ),
              ),
              ProductIngredientBox(
                totalIngredient: data.item2.length,
                riskIngredient: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
