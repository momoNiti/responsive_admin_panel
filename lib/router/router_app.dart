import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/router/router.dart';
import 'package:responsive_admin_panel/screens/home_screen/home_screen.dart';
import 'package:responsive_admin_panel/screens/test_screen/test_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class RouterApp {
  // static Route<dynamic> generateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case RoutePath.home_screen:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) => HomeScreen(),
  //       );
  //     case RoutePath.test_screen:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) => TestScreen(),
  //       );

  //     default:
  //       return MaterialPageRoute(
  //         settings: settings,
  //         builder: (context) => HomeScreen(),
  //       );
  //   }
  // }
  static VxNavigator routerDelegate = VxNavigator(
    notFoundPage: (uri, params) => MaterialPage(
      key: ValueKey('not-found-page'),
      child: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('Page ${uri.path} not found'),
          ),
        ),
      ),
    ),
    routes: {
      RoutePath.home_screen: (uri, params) => MaterialPage(child: HomeScreen()),
      RoutePath.test_screen: (uri, params) => MaterialPage(
            child: TestScreen(
              params: uri.queryParameters['id'].toString(),
            ),
          ),
    },
  );
}
