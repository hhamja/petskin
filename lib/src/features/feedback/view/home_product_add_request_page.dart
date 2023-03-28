import 'package:flutter/material.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/features/feedback/component/product_add_requst_body.dart';

class HomeProductAddRequestPage extends StatefulWidget {
  const HomeProductAddRequestPage({super.key});

  @override
  State<HomeProductAddRequestPage> createState() => _HomeProductAddRequestPageState();
}

class _HomeProductAddRequestPageState extends State<HomeProductAddRequestPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      body: ProductAddRequestBody(),
    );
  }
}
