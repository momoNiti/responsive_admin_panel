import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/screens/home_screen/dashboard/widgets/chart.dart';
import 'package:responsive_admin_panel/utility/constants.dart';

import 'storage_info_card.dart';

class StorageInfo extends StatelessWidget {
  const StorageInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Detail",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: "Documents Files",
            assetName: 'assets/icons/documents.svg',
            files: 20,
            size: 1.38,
          ),
          StorageInfoCard(
            title: "Media Files",
            assetName: 'assets/icons/media.svg',
            files: 100,
            size: 15.38,
          ),
          StorageInfoCard(
            title: "Other Files",
            assetName: 'assets/icons/folder.svg',
            files: 1328,
            size: 1.38,
          ),
          StorageInfoCard(
            title: "Unknown",
            assetName: 'assets/icons/unknown.svg',
            files: 140,
            size: 1.38,
          ),
        ],
      ),
    );
  }
}
