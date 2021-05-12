import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo(
      {this.svgSrc,
        this.title,
        this.totalStorage,
        this.numOfFiels,
        this.percentage,
        this.color});
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Dev Team Docs",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "HR Team Docs",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Designs",
    numOfFiels: 1328,
    svgSrc: "assets/icons/folder.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Other",
    numOfFiels: 5328,
    svgSrc: "assets/icons/excle_file.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
