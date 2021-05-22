import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/utility/constants.dart';

class StorageInfoCard extends StatelessWidget {
  final String title, assetName;
  final int files;
  final double size;

  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.assetName,
    required this.files,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding / 2),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              assetName,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "${files.toString()} Files",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white70,
                        ),
                  )
                ],
              ),
            ),
          ),
          Text("${size.toStringAsFixed(2)} Gb"),
        ],
      ),
    );
  }
}
