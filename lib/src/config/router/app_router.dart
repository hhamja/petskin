import 'package:auto_route/annotations.dart';
import 'package:petskin/src/core/view/splash/splash.dart';
import 'package:petskin/src/core/view/tabbar_page/tabbar_page.dart';
import 'package:petskin/src/features/feedback/view/home_product_add_request_page.dart';
import 'package:petskin/src/features/feedback/view/product_add_request_page.dart';
import 'package:petskin/src/features/feedback/view/user_app_feedback.dart';
import 'package:petskin/src/features/product/view/detail_product_page.dart';
import 'package:petskin/src/features/product/view/home_page.dart';
import 'package:petskin/src/features/product/view/home_search_page.dart';
import 'package:petskin/src/features/product/view/ingredient_list_page.dart';
import 'package:petskin/src/features/product/view/product_list_page.dart';
import 'package:petskin/src/features/product/view/push_search_page.dart';
import 'package:petskin/src/features/product/view/search_result_page.dart';
import 'package:petskin/src/features/setting/view/notice_page.dart';
import 'package:petskin/src/features/setting/view/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: UserAppFeedbackPage),
    AutoRoute(page: ProductListPage),
    AutoRoute(page: DetailProductPage),
    AutoRoute(page: TabbarPage),
    AutoRoute(page: PushSearchPage),
    AutoRoute(page: SettingPage),
    AutoRoute(page: IngredientListPage),
    AutoRoute(page: HomeSearchPage),
    AutoRoute(page: SearchResultPage),
    AutoRoute(page: AppNoticePage),
    AutoRoute(page: ProductAddRequestPage),
    AutoRoute(page: HomeProductAddRequestPage),
  ],
)
class $AppRouter {}
