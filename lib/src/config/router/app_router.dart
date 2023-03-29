import 'package:auto_route/annotations.dart';
import 'package:petskin/src/features/common/presentation/screen/splash/splash.dart';
import 'package:petskin/src/features/common/presentation/screen/tabbar_page/tabbar_page.dart';

import 'package:petskin/src/features/feedback/presentation/screen/home_product_add_request_page.dart';
import 'package:petskin/src/features/feedback/presentation/screen/product_add_request_page.dart';
import 'package:petskin/src/features/feedback/presentation/screen/user_app_feedback.dart';
import 'package:petskin/src/features/product/presentation/screen/detail_product_page.dart';
import 'package:petskin/src/features/product/presentation/screen/home_page.dart';
import 'package:petskin/src/features/product/presentation/screen/home_search_page.dart';
import 'package:petskin/src/features/product/presentation/screen/ingredient_list_page.dart';
import 'package:petskin/src/features/product/presentation/screen/product_list_page.dart';
import 'package:petskin/src/features/product/presentation/screen/push_search_page.dart';
import 'package:petskin/src/features/product/presentation/screen/search_result_page.dart';
import 'package:petskin/src/features/setting/presentation/screen/notice_page.dart';
import 'package:petskin/src/features/setting/presentation/screen/setting_page.dart';

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
