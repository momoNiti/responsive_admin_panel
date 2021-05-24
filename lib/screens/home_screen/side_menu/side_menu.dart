import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/router/router_app.gr.dart';

import 'widgets/drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .65,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('assets/images/logo.png'),
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_dashbord.svg',
                title: "Dashboard",
                function: () {
                  print("Dashboard");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_tran.svg',
                title: "transaction",
                function: () {
                  context.router.push(ProductRouter());
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_task.svg',
                title: "Task",
                function: () {
                  print("Task");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_doc.svg',
                title: "Documents",
                function: () {
                  print("Documents");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_store.svg',
                title: "Store",
                function: () {
                  print("Store");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_notification.svg',
                title: "Notification",
                function: () {
                  print("Notification");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_profile.svg',
                title: "Profile",
                function: () {
                  print("Profile");
                },
              ),
              DrawerListTile(
                assetName: 'assets/icons/menu_setting.svg',
                title: "Settings",
                function: () {
                  print("Settings");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
