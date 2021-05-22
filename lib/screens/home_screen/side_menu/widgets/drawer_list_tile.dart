import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  final String assetName, title;
  final VoidCallback function;
  const DrawerListTile({
    Key? key,
    required this.assetName,
    required this.title,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        assetName,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
