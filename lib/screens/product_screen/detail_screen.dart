import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/router/router_app.gr.dart';

class DetailScreen extends StatelessWidget {
  final String? id;

  const DetailScreen({Key? key, @QueryParam() this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("DetailScreen with Id : ${id ?? 0}}"),
        ElevatedButton(
          onPressed: () {},
          child: Text("Go to Confirm Screen"),
        )
      ],
    );
  }
}
