import 'package:auto_route/annotations.dart';
import 'package:petskin/src/core/view/splash/splash.dart';
import 'package:petskin/src/core/view/tabbar_page/tabbar_page.dart';
import 'package:petskin/src/features/product/view/home_page.dart';
import 'package:petskin/src/features/product/view/search_page.dart';
import 'package:petskin/src/features/user/view/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: TabbarPage),
    AutoRoute(page: SearchPage),
    AutoRoute(page: SettingPage),
  ],
)
class $AppRouter {}
