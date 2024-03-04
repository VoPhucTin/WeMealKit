import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Row02ItemWidget extends StatelessWidget {
  const Row02ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.v,
      width: 164.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 4.v,
                right: 3.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                "Kết hợp hương vị",
                style: CustomTextStyles.labelMediumGray900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsOrange70054x49,
            height: 51.v,
            width: 41.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
