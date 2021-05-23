// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i2;

import '../screens/home_screen/home_screen.dart' as _i3;
import '../screens/test_screen/test_screen.dart' as _i4;
import '../screens/test_screen/test_second_screen.dart' as _i6;
import '../screens/test_screen/test_third_screen.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
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
    TestScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<TestScreenArgs>(
              orElse: () => TestScreenArgs(id: pathParams.getString('id')));
          return _i4.TestScreen(key: args.key, id: args.id);
        }),
    TestThirdScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final queryParams = data.queryParams;
          final args = data.argsAs<TestThirdScreenArgs>(
              orElse: () =>
                  TestThirdScreenArgs(id: queryParams.optString('id')));
          return _i5.TestThirdScreen(key: args.key, id: args.id);
        }),
    TestSecondScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.TestSecondScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i1.RouteConfig(TestScreen.name, path: 'detail/:id', children: [
          _i1.RouteConfig(TestSecondScreen.name, path: 'testInside')
        ]),
        _i1.RouteConfig(TestThirdScreen.name, path: 'test')
      ];
}

class HomeScreen extends _i1.PageRouteInfo<HomeScreenArgs> {
  HomeScreen({_i7.Key? key})
      : super(name, path: '/home-screen', args: HomeScreenArgs(key: key));

  static const String name = 'HomeScreen';
}

class HomeScreenArgs {
  const HomeScreenArgs({this.key});

  final _i7.Key? key;
}

class TestScreen extends _i1.PageRouteInfo<TestScreenArgs> {
  TestScreen(
      {_i7.Key? key, required String id, List<_i1.PageRouteInfo>? children})
      : super(name,
            path: 'detail/:id',
            args: TestScreenArgs(key: key, id: id),
            rawPathParams: {'id': id},
            initialChildren: children);

  static const String name = 'TestScreen';
}

class TestScreenArgs {
  const TestScreenArgs({this.key, required this.id});

  final _i7.Key? key;

  final String id;
}

class TestThirdScreen extends _i1.PageRouteInfo<TestThirdScreenArgs> {
  TestThirdScreen({_i7.Key? key, String? id})
      : super(name,
            path: 'test',
            args: TestThirdScreenArgs(key: key, id: id),
            rawQueryParams: {'id': id});

  static const String name = 'TestThirdScreen';
}

class TestThirdScreenArgs {
  const TestThirdScreenArgs({this.key, this.id});

  final _i7.Key? key;

  final String? id;
}

class TestSecondScreen extends _i1.PageRouteInfo {
  const TestSecondScreen() : super(name, path: 'testInside');

  static const String name = 'TestSecondScreen';
}
