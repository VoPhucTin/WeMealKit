import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  const Userprofile7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame723,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rau bí xanh",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 95.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClockOrange700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "250g",
                          style: CustomTextStyles.titleSmallBluegray70001Medium,
                        ),
                      ),
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgThumbsUpOrange70024x24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
