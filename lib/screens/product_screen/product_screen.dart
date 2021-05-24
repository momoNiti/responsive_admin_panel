import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/router/router_app.gr.dart';
import 'package:auto_route/auto_route.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Product number"),
        ElevatedButton(
          onPressed: () {
            context.router
                .push(DetailRouter(children: [DetailScreen(id: "1")]));
          },
          child: Text("Detail"),
        )
      ],
    );
  }
}
