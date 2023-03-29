import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/supabase_constant.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/features/common/presentation/widget/async_value/custom_error_data.dart';
import 'package:petskin/src/features/common/presentation/widget/default_layout/default_layout.dart';
import 'package:petskin/src/features/common/presentation/widget/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/features/common/presentation/widget/loading/circular_loading.dart';
import 'package:petskin/src/features/product/presentation/widget/detail_product.dart';
import 'package:petskin/src/features/product/presentation/widget/product_ingredient.dart';
import 'package:petskin/src/features/product/presentation/controller/detail_product_view_model.dart';

class DetailProductPage extends ConsumerWidget {
  final String id;
  const DetailProductPage({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(id));
    final ingredient = ref.watch(ingredientProvider(id));

    return DefaultLayout(
      leading: const CustomBackButton(),
      actions: [
        InkWell(
          onTap: () async {
            context.router.push(const PushSearchRoute());
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Icon(CupertinoIcons.search),
          ),
        ),
      ],
      body: product.when(
        error: (error, stackTrace) => const CustomErrorData(),
        loading: () => const CustomCircularLoading(),
        data: (product) => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 제품 사진
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.network(SupabseConstant.productImg),
              ),
              ProductDetailBox(
                brand: product.brand,
                price: product.price,
                productName: product.productName,
                volume: product.volume,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 29.0),
                child: Divider(
                  color: DEEP_LIGHT_GREY_COLOR,
                  thickness: 3,
                ),
              ),
              ingredient.when(
                data: (ingredientList) {
                  final List<String> ewgList = ingredientList.map((ingredient) {
                    final int dashIndex = ingredient.ewg.indexOf('-');
                    if (dashIndex != -1) {
                      // '-' 이후 문자열 추출
                      return ingredient.ewg.substring(dashIndex + 1);
                    } else {
                      // 그대로 반환
                      return ingredient.ewg;
                    }
                  }).toList();
                  final List<String> ewgRiskList = ewgList
                      .where((result) =>
                          int.tryParse(result) != null &&
                          int.parse(result) >= 3)
                      .toList();
                  return ProductIngredientBox(
                    onTap: () async {
                      context.router.push(
                        IngredientListRoute(
                          ingredientList: ingredientList,
                          productName: product.productName,
                          brand: product.brand,
                        ),
                      );
                    },
                    totalIngredient: ingredientList.length,
                    riskIngredient: ewgRiskList.length,
                  );
                },
                error: (error, stackTrace) => const Center(
                  child: Text('에러입니다'),
                ),
                loading: () => const CustomCircularLoading(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
