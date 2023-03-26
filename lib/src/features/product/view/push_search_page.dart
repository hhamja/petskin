import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/core/component/icon_button/custom_back_icon_bt.dart';
import 'package:petskin/src/features/product/component/search_page_body.dart';

class PushSearchPage extends ConsumerStatefulWidget {
  const PushSearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PushSearchPageState();
}

class _PushSearchPageState extends ConsumerState<PushSearchPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      leading: CustomBackButton(),
      body: SearchPageBody(),
    );
  }
}
