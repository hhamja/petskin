// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../features/common/presentation/screen/home_page/home_page.dart'
    as _i2;
import '../../features/common/presentation/screen/splash/splash.dart' as _i1;
import '../../features/common/presentation/screen/tabbar_page/tabbar_page.dart'
    as _i6;
import '../../features/feedback/presentation/screen/home_product_add_request_page.dart'
    as _i14;
import '../../features/feedback/presentation/screen/product_add_request_page.dart'
    as _i13;
import '../../features/feedback/presentation/screen/user_app_feedback.dart'
    as _i3;
import '../../features/product/domain/ingredient_model.dart' as _i20;
import '../../features/product/presentation/screen/detail_product_page.dart'
    as _i5;
import '../../features/product/presentation/screen/home_search_page.dart'
    as _i10;
import '../../features/product/presentation/screen/ingredient_list_page.dart'
    as _i9;
import '../../features/product/presentation/screen/product_list_page.dart'
    as _i4;
import '../../features/product/presentation/screen/push_search_page.dart'
    as _i7;
import '../../features/product/presentation/screen/search_result_page.dart'
    as _i11;
import '../../features/setting/presentation/screen/notice_page/notice_page.dart'
    as _i12;
import '../../features/setting/presentation/screen/setting_page/setting_page.dart'
    as _i8;
import '../../features/setting/presentation/screen/terms_policy_page/policy_detail_page.dart'
    as _i15;
import '../../features/setting/presentation/screen/terms_policy_page/terms_detail_page.dart'
    as _i16;
import '../../features/setting/presentation/screen/terms_policy_page/terms_policy.dart'
    as _i17;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    UserAppFeedbackRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserAppFeedbackPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      final args = routeData.argsAs<ProductListRouteArgs>(
          orElse: () => const ProductListRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductListPage(key: args.key),
      );
    },
    DetailProductRoute.name: (routeData) {
      final args = routeData.argsAs<DetailProductRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.DetailProductPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    TabbarRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TabbarPage(),
      );
    },
    PushSearchRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PushSearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
    IngredientListRoute.name: (routeData) {
      final args = routeData.argsAs<IngredientListRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.IngredientListPage(
          key: args.key,
          ingredientList: args.ingredientList,
          productName: args.productName,
          brand: args.brand,
        ),
      );
    },
    HomeSearchRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HomeSearchPage(),
      );
    },
    SearchResultRoute.name: (routeData) {
      final args = routeData.argsAs<SearchResultRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.SearchResultPage(
          args.query,
          key: args.key,
        ),
      );
    },
    AppNoticeRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.AppNoticePage(),
      );
    },
    ProductAddRequestRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ProductAddRequestPage(),
      );
    },
    HomeProductAddRequestRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.HomeProductAddRequestPage(),
      );
    },
    PrivacyPolicyDetailRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.PrivacyPolicyDetailPage(),
      );
    },
    TermsDetailRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.TermsDetailPage(),
      );
    },
    TermsPolicyAgreementRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.TermsPolicyAgreementPage(),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i18.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i18.RouteConfig(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        ),
        _i18.RouteConfig(
          ProductListRoute.name,
          path: '/product-list-page',
        ),
        _i18.RouteConfig(
          DetailProductRoute.name,
          path: '/detail-product-page',
        ),
        _i18.RouteConfig(
          TabbarRoute.name,
          path: '/tabbar-page',
        ),
        _i18.RouteConfig(
          PushSearchRoute.name,
          path: '/push-search-page',
        ),
        _i18.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
        _i18.RouteConfig(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
        ),
        _i18.RouteConfig(
          HomeSearchRoute.name,
          path: '/home-search-page',
        ),
        _i18.RouteConfig(
          SearchResultRoute.name,
          path: '/search-result-page',
        ),
        _i18.RouteConfig(
          AppNoticeRoute.name,
          path: '/app-notice-page',
        ),
        _i18.RouteConfig(
          ProductAddRequestRoute.name,
          path: '/product-add-request-page',
        ),
        _i18.RouteConfig(
          HomeProductAddRequestRoute.name,
          path: '/home-product-add-request-page',
        ),
        _i18.RouteConfig(
          PrivacyPolicyDetailRoute.name,
          path: '/privacy-policy-detail-page',
        ),
        _i18.RouteConfig(
          TermsDetailRoute.name,
          path: '/terms-detail-page',
        ),
        _i18.RouteConfig(
          TermsPolicyAgreementRoute.name,
          path: '/terms-policy-agreement-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.UserAppFeedbackPage]
class UserAppFeedbackRoute extends _i18.PageRouteInfo<void> {
  const UserAppFeedbackRoute()
      : super(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        );

  static const String name = 'UserAppFeedbackRoute';
}

/// generated route for
/// [_i4.ProductListPage]
class ProductListRoute extends _i18.PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({_i19.Key? key})
      : super(
          ProductListRoute.name,
          path: '/product-list-page',
          args: ProductListRouteArgs(key: key),
        );

  static const String name = 'ProductListRoute';
}

class ProductListRouteArgs {
  const ProductListRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.DetailProductPage]
class DetailProductRoute extends _i18.PageRouteInfo<DetailProductRouteArgs> {
  DetailProductRoute({
    required String id,
    _i19.Key? key,
  }) : super(
          DetailProductRoute.name,
          path: '/detail-product-page',
          args: DetailProductRouteArgs(
            id: id,
            key: key,
          ),
        );

  static const String name = 'DetailProductRoute';
}

class DetailProductRouteArgs {
  const DetailProductRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i19.Key? key;

  @override
  String toString() {
    return 'DetailProductRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i6.TabbarPage]
class TabbarRoute extends _i18.PageRouteInfo<void> {
  const TabbarRoute()
      : super(
          TabbarRoute.name,
          path: '/tabbar-page',
        );

  static const String name = 'TabbarRoute';
}

/// generated route for
/// [_i7.PushSearchPage]
class PushSearchRoute extends _i18.PageRouteInfo<void> {
  const PushSearchRoute()
      : super(
          PushSearchRoute.name,
          path: '/push-search-page',
        );

  static const String name = 'PushSearchRoute';
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i18.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i9.IngredientListPage]
class IngredientListRoute extends _i18.PageRouteInfo<IngredientListRouteArgs> {
  IngredientListRoute({
    _i19.Key? key,
    required List<_i20.IngredientModel> ingredientList,
    required String productName,
    required String brand,
  }) : super(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
          args: IngredientListRouteArgs(
            key: key,
            ingredientList: ingredientList,
            productName: productName,
            brand: brand,
          ),
        );

  static const String name = 'IngredientListRoute';
}

class IngredientListRouteArgs {
  const IngredientListRouteArgs({
    this.key,
    required this.ingredientList,
    required this.productName,
    required this.brand,
  });

  final _i19.Key? key;

  final List<_i20.IngredientModel> ingredientList;

  final String productName;

  final String brand;

  @override
  String toString() {
    return 'IngredientListRouteArgs{key: $key, ingredientList: $ingredientList, productName: $productName, brand: $brand}';
  }
}

/// generated route for
/// [_i10.HomeSearchPage]
class HomeSearchRoute extends _i18.PageRouteInfo<void> {
  const HomeSearchRoute()
      : super(
          HomeSearchRoute.name,
          path: '/home-search-page',
        );

  static const String name = 'HomeSearchRoute';
}

/// generated route for
/// [_i11.SearchResultPage]
class SearchResultRoute extends _i18.PageRouteInfo<SearchResultRouteArgs> {
  SearchResultRoute({
    required String query,
    _i19.Key? key,
  }) : super(
          SearchResultRoute.name,
          path: '/search-result-page',
          args: SearchResultRouteArgs(
            query: query,
            key: key,
          ),
        );

  static const String name = 'SearchResultRoute';
}

class SearchResultRouteArgs {
  const SearchResultRouteArgs({
    required this.query,
    this.key,
  });

  final String query;

  final _i19.Key? key;

  @override
  String toString() {
    return 'SearchResultRouteArgs{query: $query, key: $key}';
  }
}

/// generated route for
/// [_i12.AppNoticePage]
class AppNoticeRoute extends _i18.PageRouteInfo<void> {
  const AppNoticeRoute()
      : super(
          AppNoticeRoute.name,
          path: '/app-notice-page',
        );

  static const String name = 'AppNoticeRoute';
}

/// generated route for
/// [_i13.ProductAddRequestPage]
class ProductAddRequestRoute extends _i18.PageRouteInfo<void> {
  const ProductAddRequestRoute()
      : super(
          ProductAddRequestRoute.name,
          path: '/product-add-request-page',
        );

  static const String name = 'ProductAddRequestRoute';
}

/// generated route for
/// [_i14.HomeProductAddRequestPage]
class HomeProductAddRequestRoute extends _i18.PageRouteInfo<void> {
  const HomeProductAddRequestRoute()
      : super(
          HomeProductAddRequestRoute.name,
          path: '/home-product-add-request-page',
        );

  static const String name = 'HomeProductAddRequestRoute';
}

/// generated route for
/// [_i15.PrivacyPolicyDetailPage]
class PrivacyPolicyDetailRoute extends _i18.PageRouteInfo<void> {
  const PrivacyPolicyDetailRoute()
      : super(
          PrivacyPolicyDetailRoute.name,
          path: '/privacy-policy-detail-page',
        );

  static const String name = 'PrivacyPolicyDetailRoute';
}

/// generated route for
/// [_i16.TermsDetailPage]
class TermsDetailRoute extends _i18.PageRouteInfo<void> {
  const TermsDetailRoute()
      : super(
          TermsDetailRoute.name,
          path: '/terms-detail-page',
        );

  static const String name = 'TermsDetailRoute';
}

/// generated route for
/// [_i17.TermsPolicyAgreementPage]
class TermsPolicyAgreementRoute extends _i18.PageRouteInfo<void> {
  const TermsPolicyAgreementRoute()
      : super(
          TermsPolicyAgreementRoute.name,
          path: '/terms-policy-agreement-page',
        );

  static const String name = 'TermsPolicyAgreementRoute';
}
