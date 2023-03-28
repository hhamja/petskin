import 'package:flutter/material.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/features/feedback/component/product_add_requst_body.dart';

class ProductAddRequestPage extends StatefulWidget {
  const ProductAddRequestPage({super.key});

  @override
  State<ProductAddRequestPage> createState() => _ProductAddRequestPageState();
}

class _ProductAddRequestPageState extends State<ProductAddRequestPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      leading: CustomBackButton(),
      body: ProductAddRequestBody(),
    );
  }
}
