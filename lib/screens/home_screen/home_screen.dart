import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/controllers/menu_controller.dart';
import 'package:responsive_admin_panel/screens/home_screen/dashboard/dashboard.dart';
import 'package:responsive_admin_panel/utility/responsive.dart';
import 'side_menu/side_menu.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashBoard(),
            ),
          ],
        ),
      ),
    );
  }
}
