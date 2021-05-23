import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_admin_panel/router/router_app.gr.dart';

class TestScreen extends StatelessWidget {
  final String id;

  const TestScreen({Key? key, @PathParam("id") required this.id})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello this page with id:" + id),
        ElevatedButton(
            onPressed: () {
              context.router.pushNamed(TestSecondScreen.name);
            },
            child: Text("Next Page")),
      ],
    );
  }
}
