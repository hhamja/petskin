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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../core/view/splash/splash.dart' as _i1;
import '../../core/view/tabbar_page/tabbar_page.dart' as _i5;
import '../../features/feedback/view/user_app_feedback.dart' as _i3;
import '../../features/product/view/home_page.dart' as _i2;
import '../../features/product/view/product_list_page.dart' as _i4;
import '../../features/product/view/search_page.dart' as _i6;
import '../../features/user/view/setting_page.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    UserAppFeedbackRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserAppFeedbackPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProductListPage(),
      );
    },
    TabbarRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TabbarPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SettingPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i8.RouteConfig(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        ),
        _i8.RouteConfig(
          ProductListRoute.name,
          path: '/product-list-page',
        ),
        _i8.RouteConfig(
          TabbarRoute.name,
          path: '/tabbar-page',
        ),
        _i8.RouteConfig(
          SearchRoute.name,
          path: '/search-page',
        ),
        _i8.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.UserAppFeedbackPage]
class UserAppFeedbackRoute extends _i8.PageRouteInfo<void> {
  const UserAppFeedbackRoute()
      : super(
          UserAppFeedbackRoute.name,
          path: '/user-app-feedback-page',
        );

  static const String name = 'UserAppFeedbackRoute';
}

/// generated route for
/// [_i4.ProductListPage]
class ProductListRoute extends _i8.PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '/product-list-page',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i5.TabbarPage]
class TabbarRoute extends _i8.PageRouteInfo<void> {
  const TabbarRoute()
      : super(
          TabbarRoute.name,
          path: '/tabbar-page',
        );

  static const String name = 'TabbarRoute';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i8.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}
