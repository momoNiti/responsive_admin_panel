import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/router/router.dart';
import 'package:responsive_admin_panel/screens/home_screen/home_screen.dart';
import 'package:responsive_admin_panel/screens/test_screen/test_screen.dart';
import 'package:responsive_admin_panel/screens/test_screen/test_second_screen.dart';
import 'package:responsive_admin_panel/screens/test_screen/test_third_screen.dart';

// class RouterApp {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case RoutePath.home_screen:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => HomeScreen(),
//         );
//       case RoutePath.test_screen:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) =>
//               TestScreen(params: (settings.arguments.toString())),
//         );

//       default:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) => HomeScreen(),
//         );
//     }
//   }
// }

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(
      page: TestScreen,
      path: "detail/:id",
      children: [
        AutoRoute(path: 'testInside', page: TestSecondScreen),
      ],
    ),
    AutoRoute(
      page: TestThirdScreen,
      path: "test",
    ),
  ],
)
class $AppRouter {}
