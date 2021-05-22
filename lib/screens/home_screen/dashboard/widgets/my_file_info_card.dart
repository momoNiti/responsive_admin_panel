import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/utility/constants.dart';

class MyFileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;
  const MyFileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding / 2),
                decoration: BoxDecoration(color: info.color.withOpacity(0.1)),
                width: 40,
                height: 40,
                child: SvgPicture.asset(
                  info.assetName,
                  color: info.color,
                ),
              ),
              IconButton(
                  onPressed: () {
                    print("More click !");
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white54,
                  ))
            ],
          ),
          Text(
            info.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          ProgressLine(info: info),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.files.toString()} Files",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white70,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                info.totalStorage,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: info.color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(builder: (context, constraint) {
          return Container(
            width: constraint.maxWidth * info.percentage / 100,
            height: 5,
            decoration: BoxDecoration(
              color: info.color.withOpacity(1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          );
        }),
      ],
    );
  }
}
