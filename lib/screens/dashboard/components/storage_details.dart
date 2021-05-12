import 'package:dashboard/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Drive Usage",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Business Docs",
            amountofFiles: "1.3GB",
            numOfFiles: 1325,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/excle_file.svg",
            title: "Support Documentation",
            amountofFiles: "11.3GB",
            numOfFiles: 1325,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/doc_file.svg",
            title: "Templates",
            amountofFiles: "1.3GB",
            numOfFiles: 1325,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Word Files",
            amountofFiles: "1.3GB",
            numOfFiles: 1325,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/pdf_file.svg",
            title: "PDFs",
            amountofFiles: "1.3GB",
            numOfFiles: 1325,
          ),
        ],
      ),
    );
  }
}