import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_admin_panel/router/router_app.gr.dart';
import 'package:responsive_admin_panel/screens/test_screen/test_second_screen.dart';

class TestThirdScreen extends StatelessWidget {
  final String? id;

  const TestThirdScreen({Key? key, @QueryParam("id") this.id})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello this page with id:" + id!),
        ElevatedButton(
            onPressed: () {
              // context.router.push(TestSecondScreen);
            },
            child: Text("Next Page")),
      ],
    );
  }
}
