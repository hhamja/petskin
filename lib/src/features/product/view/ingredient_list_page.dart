import 'package:flutter/material.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';

class IngredientListPage extends StatelessWidget {
  const IngredientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      leading: const CustomBackButton(),
      title: const Text(
        '성분',
      ),
      actions: [
        InkWell(
          onTap: () async {
            // 성분에 대한 추가정보를 알려주는 info 아이콘
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Icon(Icons.info_outline),
          ),
        ),
      ],
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
