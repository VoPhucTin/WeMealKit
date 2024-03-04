import 'frame5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBrookeLark08b52x52,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Column(
              children: [
                Text(
                  "Bánh mì sandwich gà nướng",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 37.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            Text(
                              "4.5",
                              style: CustomTextStyles.labelLargeBluegray70001,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 9.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "20 phút",
                          style: CustomTextStyles.labelLargeBluegray70001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Wrap(
                  runSpacing: 4.v,
                  spacing: 4.h,
                  children:
                      List<Widget>.generate(3, (index) => Frame5ItemWidget()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
