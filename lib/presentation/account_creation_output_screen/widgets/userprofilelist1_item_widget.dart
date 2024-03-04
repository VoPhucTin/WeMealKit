import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  const Userprofilelist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame730,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 149.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Container(
            width: 41.h,
            margin: EdgeInsets.only(left: 10.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "SÁNG",
              style: CustomTextStyles.labelMediumBold,
            ),
          ),
          SizedBox(height: 101.v),
          Container(
            width: 149.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillGray900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Text(
                  "Súp gà",
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClockOnerrorcontainer,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "20 phút",
                        style:
                            CustomTextStyles.labelLargeOnErrorContainerMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
