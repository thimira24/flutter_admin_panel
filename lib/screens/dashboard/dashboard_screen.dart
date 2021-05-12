import 'package:dashboard/constants.dart';
import 'package:dashboard/models/RecentFile.dart';
import 'package:dashboard/screens/dashboard/components/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dashboard/screens/dashboard/components/header.dart';
import '../../responsive.dart';
import 'components/recentFiles.dart';
import 'components/my_files.dart';
import 'components/recentFiles.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFiles(),
                      if(Responsive.isMobile(context))
                        SizedBox(height: defaultPadding,),
                      if(Responsive.isMobile(context))
                        StorageDetails(),
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                SizedBox(width: defaultPadding,),
                if(!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
