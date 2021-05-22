import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/models/recent_file.dart';
import 'package:responsive_admin_panel/utility/constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
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
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => buildDataRow(demoRecentFiles.elementAt(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(RecentFile recentFiles) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                recentFiles.icon,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                  ),
                  child: Text(recentFiles.title)),
            ],
          ),
        ),
        DataCell(
          Text(recentFiles.date),
        ),
        DataCell(
          Text(recentFiles.size),
        ),
      ],
    );
  }
}
