import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class OrderlistItemWidget extends StatelessWidget {
  final String itemName;
  final String itemImagePath;

  const OrderlistItemWidget({
    required this.itemName,
    required this.itemImagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 140.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: itemImagePath,
            height: 30.v,
            width: 25.h,
          ),
          SizedBox(height: 5.v),
          Text(
            itemName,
            style: CustomTextStyles.labelMediumGray900,
          ),
        ],
      ),
    );
  }
}
