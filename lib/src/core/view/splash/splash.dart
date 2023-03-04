import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/config/constant/app_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      debugPrint('페이지 이동');
    });
  }

  @override
  Widget build(BuildContext context) {
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
