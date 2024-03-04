import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofilelist4ItemWidget extends StatelessWidget {
  const Userprofilelist4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 28.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserOrange700,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 152.h,
                child: Text(
                  "Bách hoá cô Hoa khao 85k đơn hàng đầu tiên",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.30,
                  ),
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "Đơn tối thiểu 120K",
                style: CustomTextStyles.labelLargeBluegray300,
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "2 ngày",
                      style: CustomTextStyles.labelMediumBluegray70001,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomElevatedButton(
            height: 24.v,
            width: 86.h,
            text: "Dùng ngay",
            margin: EdgeInsets.symmetric(vertical: 26.v),
            buttonStyle: CustomButtonStyles.fillOrangeTL8,
            buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainerMedium,
          ),
        ],
      ),
    );
  }
}
