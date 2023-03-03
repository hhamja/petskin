import 'package:petskin/utils/index/index.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
