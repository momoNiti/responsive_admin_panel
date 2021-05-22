import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/utility/constants.dart';

class CloudStorageInfo {
  final String assetName, title, totalStorage;
  final int files, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.assetName,
      required this.title,
      required this.totalStorage,
      required this.files,
      required this.percentage,
      required this.color});
}

List<CloudStorageInfo> demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    files: 1328,
    assetName: "assets/icons/documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    files: 1328,
    assetName: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    files: 1328,
    assetName: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    files: 5328,
    assetName: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
