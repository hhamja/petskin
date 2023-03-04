import 'package:flutter/material.dart';
import 'package:petskin/config/const/app_color.dart';

class AppThemeData {
  static final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    // primaryColor: PRIMARY_COLOR,

    scaffoldBackgroundColor: WHITE_COLOR,
    // 게시글 추가하는 +버튼
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: PRIMARY_COLOR,
    ),
    // 앱바
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: WHITE_COLOR,
      iconTheme: IconThemeData(
        color: BLACK_COLOR,
        size: 26,
      ),
      actionsIconTheme: IconThemeData(
        color: BLACK_COLOR,
        size: 26,
      ),
    ),

    // 바텀시트
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: BLACK_COLOR,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: BLACK_COLOR,
      elevation: 0,
    ),
    // 앱 기본 폰트
    fontFamily: 'NotoSansCJKkr',
  );
}
