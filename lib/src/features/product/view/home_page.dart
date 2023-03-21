import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/features/product/component/category_item.dart';
import 'package:petskin/src/features/product/component/home_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            width: 300,
            height: 5,
            color: Colors.red,
          ),
        ),
        title: GestureDetector(
          onTap: () async {
            context.router.push(const SearchRoute());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey[600]!,
              ),
            ),
            alignment: Alignment.centerRight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '검색...',
                    style: TextStyle(
                      color: Colors.grey[600]!,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomePageImg(),
            const SizedBox(height: 30),
            const Text(
              '카테고리',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                CategoryItem(
                  onTap: () async {
                    context.router.push(const ProductListRoute());
                  },
                  categoryText: '샴푸',
                  icon: CupertinoIcons.drop,
                  iconColor: TEXT_COLOR,
                  iconSize: 40,
                ),
                CategoryItem(
                  onTap: () async {
                    context.router.push(const UserAppFeedbackRoute());
                  },
                  categoryText: '더보기',
                  icon: CupertinoIcons.add,
                  iconColor: TEXT_COLOR,
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}