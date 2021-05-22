import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/utility/responsive.dart';
import '../../../utility/constants.dart';
import 'widgets/header.dart';
import 'widgets/my_files.dart';
import 'widgets/recent_files.dart';
import 'widgets/storage_infoi.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding),
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                    if (Responsive.isMobile(context)) StorageInfo(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(width: defaultPadding),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageInfo(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
