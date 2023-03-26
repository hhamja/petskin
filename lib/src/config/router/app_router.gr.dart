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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../core/view/splash/splash.dart' as _i1;
import '../../core/view/tabbar_page/tabbar_page.dart' as _i6;
import '../../features/feedback/view/user_app_feedback.dart' as _i3;
import '../../features/product/model/ingredient_model.dart' as _i14;
import '../../features/product/view/detail_product_page.dart' as _i5;
import '../../features/product/view/home_page.dart' as _i2;
import '../../features/product/view/home_search_page.dart' as _i10;
import '../../features/product/view/ingredient_list_page.dart' as _i9;
import '../../features/product/view/product_list_page.dart' as _i4;
import '../../features/product/view/push_search_page.dart' as _i7;
import '../../features/product/view/search_result_page.dart' as _i11;
import '../../features/user/view/setting_page.dart' as _i8;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    UserAppFeedbackRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserAppFeedbackPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      final args = routeData.argsAs<ProductListRouteArgs>(
          orElse: () => const ProductListRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductListPage(key: args.key),
      );
    },
    DetailProductRoute.name: (routeData) {
      final args = routeData.argsAs<DetailProductRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.DetailProductPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    TabbarRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TabbarPage(),
      );
    },
    PushSearchRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PushSearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
    IngredientListRoute.name: (routeData) {
      final args = routeData.argsAs<IngredientListRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.IngredientListPage(
          key: args.key,
          ingredientList: args.ingredientList,
        ),
      );
    },
    HomeSearchRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HomeSearchPage(),
      );
    },
    SearchResultRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SearchResultPage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i12.RouteConfig(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        ),
        _i12.RouteConfig(
          ProductListRoute.name,
          path: '/product-list-page',
        ),
        _i12.RouteConfig(
          DetailProductRoute.name,
          path: '/detail-product-page',
        ),
        _i12.RouteConfig(
          TabbarRoute.name,
          path: '/tabbar-page',
        ),
        _i12.RouteConfig(
          PushSearchRoute.name,
          path: '/push-search-page',
        ),
        _i12.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
        _i12.RouteConfig(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
        ),
        _i12.RouteConfig(
          HomeSearchRoute.name,
          path: '/home-search-page',
        ),
        _i12.RouteConfig(
          SearchResultRoute.name,
          path: '/search-result-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.UserAppFeedbackPage]
class UserAppFeedbackRoute extends _i12.PageRouteInfo<void> {
  const UserAppFeedbackRoute()
      : super(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        );

  static const String name = 'UserAppFeedbackRoute';
}

/// generated route for
/// [_i4.ProductListPage]
class ProductListRoute extends _i12.PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({_i13.Key? key})
      : super(
          ProductListRoute.name,
          path: '/product-list-page',
          args: ProductListRouteArgs(key: key),
        );

  static const String name = 'ProductListRoute';
}

class ProductListRouteArgs {
  const ProductListRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.DetailProductPage]
class DetailProductRoute extends _i12.PageRouteInfo<DetailProductRouteArgs> {
  DetailProductRoute({
    required String id,
    _i13.Key? key,
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

  final _i13.Key? key;

  @override
  String toString() {
    return 'DetailProductRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i6.TabbarPage]
class TabbarRoute extends _i12.PageRouteInfo<void> {
  const TabbarRoute()
      : super(
          TabbarRoute.name,
          path: '/tabbar-page',
        );

  static const String name = 'TabbarRoute';
}

/// generated route for
/// [_i7.PushSearchPage]
class PushSearchRoute extends _i12.PageRouteInfo<void> {
  const PushSearchRoute()
      : super(
          PushSearchRoute.name,
          path: '/push-search-page',
        );

  static const String name = 'PushSearchRoute';
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i12.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i9.IngredientListPage]
class IngredientListRoute extends _i12.PageRouteInfo<IngredientListRouteArgs> {
  IngredientListRoute({
    _i13.Key? key,
    required List<_i14.IngredientModel> ingredientList,
  }) : super(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
          args: IngredientListRouteArgs(
            key: key,
            ingredientList: ingredientList,
          ),
        );

  static const String name = 'IngredientListRoute';
}

class IngredientListRouteArgs {
  const IngredientListRouteArgs({
    this.key,
    required this.ingredientList,
  });

  final _i13.Key? key;

  final List<_i14.IngredientModel> ingredientList;

  @override
  String toString() {
    return 'IngredientListRouteArgs{key: $key, ingredientList: $ingredientList}';
  }
}

/// generated route for
/// [_i10.HomeSearchPage]
class HomeSearchRoute extends _i12.PageRouteInfo<void> {
  const HomeSearchRoute()
      : super(
          HomeSearchRoute.name,
          path: '/home-search-page',
        );

  static const String name = 'HomeSearchRoute';
}

/// generated route for
/// [_i11.SearchResultPage]
class SearchResultRoute extends _i12.PageRouteInfo<void> {
  const SearchResultRoute()
      : super(
          SearchResultRoute.name,
          path: '/search-result-page',
        );

  static const String name = 'SearchResultRoute';
}
