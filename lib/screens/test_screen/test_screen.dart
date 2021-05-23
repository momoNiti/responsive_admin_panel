import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  final String params;

  const TestScreen({Key? key, required this.params}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello this page with id:" + params),
    );
  }
}
