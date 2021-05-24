import 'package:auto_route/auto_route.dart';
import 'package:responsive_admin_panel/router/router.dart';
import 'package:responsive_admin_panel/screens/home_screen/home_screen.dart';
import 'package:responsive_admin_panel/screens/product_screen/detail_screen.dart';
import 'package:responsive_admin_panel/screens/product_screen/product_screen.dart';

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
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(
      page: EmptyRouterPage,
      path: RoutePath.product_screen, // '/product'
      name: "ProductRouter",
      children: [
        AutoRoute(path: '', page: ProductScreen),
        AutoRoute(
          path: 'detail',
          page: EmptyRouterPage,
          name: "DetailRouter",
          children: [
            AutoRoute(path: '', page: DetailScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $RouterApp {}
