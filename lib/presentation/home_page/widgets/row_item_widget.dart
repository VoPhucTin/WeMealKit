import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class RowItemWidget extends StatelessWidget {
  const RowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpOrange700,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
          SizedBox(height: 9.v),
          Text(
            "Truyền thống",
            style: CustomTextStyles.labelMediumGray900,
          ),
        ],
      ),
    );
  }
}
