// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/home_screen/home_screen.dart' as _i3;
import '../screens/product_screen/detail_screen.dart' as _i5;
import '../screens/product_screen/product_screen.dart' as _i4;

class RouterApp extends _i1.RootStackRouter {
  RouterApp([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeScreenArgs>(orElse: () => const HomeScreenArgs());
          return _i3.HomeScreen(key: args.key);
        }),
    ProductRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ProductScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.ProductScreen();
        }),
    DetailRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    DetailScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final queryParams = data.queryParams;
          final args = data.argsAs<DetailScreenArgs>(
              orElse: () => DetailScreenArgs(id: queryParams.optString('id')));
          return _i5.DetailScreen(key: args.key, id: args.id);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeScreen.name, path: '/'),
        _i1.RouteConfig(ProductRouter.name, path: '/product', children: [
          _i1.RouteConfig(ProductScreen.name, path: ''),
          _i1.RouteConfig(DetailRouter.name, path: 'detail', children: [
            _i1.RouteConfig(DetailScreen.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ])
      ];
}

class HomeScreen extends _i1.PageRouteInfo<HomeScreenArgs> {
  HomeScreen({_i2.Key? key})
      : super(name, path: '/', args: HomeScreenArgs(key: key));

  static const String name = 'HomeScreen';
}

class HomeScreenArgs {
  const HomeScreenArgs({this.key});

  final _i2.Key? key;
}

class ProductRouter extends _i1.PageRouteInfo {
  const ProductRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/product', initialChildren: children);

  static const String name = 'ProductRouter';
}

class ProductScreen extends _i1.PageRouteInfo {
  const ProductScreen() : super(name, path: '');

  static const String name = 'ProductScreen';
}

class DetailRouter extends _i1.PageRouteInfo {
  const DetailRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'detail', initialChildren: children);

  static const String name = 'DetailRouter';
}

class DetailScreen extends _i1.PageRouteInfo<DetailScreenArgs> {
  DetailScreen({_i2.Key? key, String? id})
      : super(name,
            path: '',
            args: DetailScreenArgs(key: key, id: id),
            rawQueryParams: {'id': id});

  static const String name = 'DetailScreen';
}

class DetailScreenArgs {
  const DetailScreenArgs({this.key, this.id});

  final _i2.Key? key;

  final String? id;
}
