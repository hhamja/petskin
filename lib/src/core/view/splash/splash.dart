import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/app_name.dart';
import 'package:petskin/src/features/product/view/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {});
  // }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      context.router.replace(const TabbarRoute());
      debugPrint('페이지 이동');
    });
    return WillPopScope(
      // 해당 위젯은 취소키 방지 역할
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: WHITE_COLOR,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      APP_NAME,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
