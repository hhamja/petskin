import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/firebase_constant.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/core/component/async_value/custom_error_data.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/core/component/loading/circular_loading.dart';
import 'package:petskin/src/features/product/component/product_list_item.dart';
import 'package:petskin/src/features/product/view_model/product_list_view_model.dart';

class ProductListPage extends ConsumerWidget {
  ProductListPage({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productListProvider);

    return DefaultLayout(
      leading: const CustomBackButton(),
      title: const Text(
        '샴푸',
      ),
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
      body: productList.when(
        error: (error, stackTrace) => const CustomErrorData(),
        loading: () => const CustomCircularLoading(),
        data: (data) => ListView.separated(
          itemCount: data.length,
          controller: _controller,
          separatorBuilder: (context, index) => const Divider(
            color: DEEP_LIGHT_GREY_COLOR,
            thickness: 1,
            height: 0,
          ),
          itemBuilder: (context, index) => ProductListItem(
            onTap: () async {
              context.router.push(
                DetailProductRoute(
                  id: data[index].id,
                ),
              );
            },
            brand: data[index].brand,
            photoUrl: FirebaseConstant.productImg,
            price: data[index].price,
            productName: data[index].productName,
            volume: data[index].volume,
          ),
        ),
      ),
    );
  }
}
