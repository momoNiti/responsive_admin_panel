import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldState;
  void control() {
    if (!_scaffoldState.currentState!.isDrawerOpen) {
      _scaffoldState.currentState!.openDrawer();
    }
  }
}
