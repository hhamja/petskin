import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';
import 'package:petskin/src/features/product/component/search_page_body.dart';

class HomeSearchPage extends ConsumerStatefulWidget {
  const HomeSearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends ConsumerState<HomeSearchPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      body: SearchPageBody(),
    );
  }
}
