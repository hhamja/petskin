import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/firebase_constant.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/features/product/component/product_list_item.dart';
import 'package:petskin/src/features/product/model/product_list_model.dart';
import 'package:petskin/src/features/product/view_model/product_view_model.dart';

class ProductListPage extends ConsumerStatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  ProductListPageState createState() => ProductListPageState();
}

class ProductListPageState extends ConsumerState<ProductListPage> {
  final ScrollController _controller = ScrollController();
  @override
  void initState() {
    ref.read(productListProvider.notifier).getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<ProductListModel> productList = ref.watch(productListProvider);
    return DefaultLayout(
      leading: CustomBackButton(
        onTap: () async {
          context.router.pop();
        },
      ),
      title: const Text(
        '샴푸',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(CupertinoIcons.search),
        )
      ],
      body: ListView.separated(
        controller: _controller,
        
        separatorBuilder: (context, index) => const Divider(
          color: LIGHT_GREY_COLOR,
          thickness: 1,
          height: 0,
        ),
        itemBuilder: (context, index) => ProductListItem(
          onTap: () async {
            context.router.push(const DetailProductRoute());
          },
          brand: productList[index].brand,
          photoUrl: FirebaseConstant.productImg,
          price: productList[index].price,
          productName: productList[index].productName,
          volume: productList[index].volume,
        ),
        itemCount: productList.length,
      ),
    );
  }
}
