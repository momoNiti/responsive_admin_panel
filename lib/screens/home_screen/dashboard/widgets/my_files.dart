import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/models/my_files.dart';
import 'package:responsive_admin_panel/screens/home_screen/dashboard/widgets/my_file_info_card.dart';
import 'package:responsive_admin_panel/utility/constants.dart';
import 'package:responsive_admin_panel/utility/responsive.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal:
                      defaultPadding * (Responsive.isMobile(context) ? 1 : 1.5),
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () => _onAddNewMyFilePressed(context),
              icon: Icon(Icons.add),
              label: Text("Add new"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          desktop: GridViewMyFilesInfo(
            aspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            crossAxisCount: 4,
          ),
          tablet: GridViewMyFilesInfo(
            aspectRatio: 1,
            crossAxisCount: 4,
          ),
          mobile: GridViewMyFilesInfo(
            aspectRatio: _size.width < 350
                ? 1.7
                : _size.width < 650
                    ? 1.3
                    : 1,
            crossAxisCount: _size.width < 350
                ? 1
                : _size.width < 650
                    ? 2
                    : 4,
          ),
        ),
      ],
    );
  }

  _onAddNewMyFilePressed(context) {
    Alert(
        context: context,
        title: "Add new",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'TEMP',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'TEMP',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}

class GridViewMyFilesInfo extends StatelessWidget {
  final double aspectRatio;
  final int crossAxisCount;
  const GridViewMyFilesInfo({
    Key? key,
    required this.aspectRatio,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        crossAxisCount: crossAxisCount,
        childAspectRatio: aspectRatio,
      ),
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return MyFileInfoCard(
          info: demoMyFiles[index],
        );
      },
    );
  }
}
