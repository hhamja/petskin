import 'package:flutter/material.dart';
import 'package:petskin/src/core/component/default_layout/default_layout.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        body: Center(
      child: Text('검색 결과 페이지'),
    ));
  }
}
