import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  const Userprofile5ItemWidget({Key? key})
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 129.v),
          Container(
            width: 149.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillGray900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gà xào sả ớt",
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCalendar,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "30/5/2023",
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
