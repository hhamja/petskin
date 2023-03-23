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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../core/view/splash/splash.dart' as _i1;
import '../../core/view/tabbar_page/tabbar_page.dart' as _i6;
import '../../features/feedback/view/user_app_feedback.dart' as _i3;
import '../../features/product/view/detail_product_page.dart' as _i5;
import '../../features/product/view/home_page.dart' as _i2;
import '../../features/product/view/ingredient_list_page.dart' as _i9;
import '../../features/product/view/product_list_page.dart' as _i4;
import '../../features/product/view/search_page.dart' as _i7;
import '../../features/user/view/setting_page.dart' as _i8;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    UserAppFeedbackRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserAppFeedbackPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      final args = routeData.argsAs<ProductListRouteArgs>(
          orElse: () => const ProductListRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductListPage(key: args.key),
      );
    },
    DetailProductRoute.name: (routeData) {
      final args = routeData.argsAs<DetailProductRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.DetailProductPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    TabbarRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TabbarPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
    IngredientListRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.IngredientListPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i10.RouteConfig(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        ),
        _i10.RouteConfig(
          ProductListRoute.name,
          path: '/product-list-page',
        ),
        _i10.RouteConfig(
          DetailProductRoute.name,
          path: '/detail-product-page',
        ),
        _i10.RouteConfig(
          TabbarRoute.name,
          path: '/tabbar-page',
        ),
        _i10.RouteConfig(
          SearchRoute.name,
          path: '/search-page',
        ),
        _i10.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
        _i10.RouteConfig(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.UserAppFeedbackPage]
class UserAppFeedbackRoute extends _i10.PageRouteInfo<void> {
  const UserAppFeedbackRoute()
      : super(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        );

  static const String name = 'UserAppFeedbackRoute';
}

/// generated route for
/// [_i4.ProductListPage]
class ProductListRoute extends _i10.PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({_i11.Key? key})
      : super(
          ProductListRoute.name,
          path: '/product-list-page',
          args: ProductListRouteArgs(key: key),
        );

  static const String name = 'ProductListRoute';
}

class ProductListRouteArgs {
  const ProductListRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.DetailProductPage]
class DetailProductRoute extends _i10.PageRouteInfo<DetailProductRouteArgs> {
  DetailProductRoute({
    required String id,
    _i11.Key? key,
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

  final _i11.Key? key;

  @override
  String toString() {
    return 'DetailProductRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i6.TabbarPage]
class TabbarRoute extends _i10.PageRouteInfo<void> {
  const TabbarRoute()
      : super(
          TabbarRoute.name,
          path: '/tabbar-page',
        );

  static const String name = 'TabbarRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i10.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i10.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i9.IngredientListPage]
class IngredientListRoute extends _i10.PageRouteInfo<void> {
  const IngredientListRoute()
      : super(
          IngredientListRoute.name,
          path: '/ingredient-list-page',
        );

  static const String name = 'IngredientListRoute';
}
