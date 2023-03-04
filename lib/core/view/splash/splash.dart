import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/config/const/app_color.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      // 해당 위젯은 취소키 방지 역할
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: WHITE_COLOR,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(35),
                  child: const Text(
                    '로고',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 89,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
