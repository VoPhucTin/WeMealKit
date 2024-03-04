import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget extends StatelessWidget {
  const DynamicviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange70048x48,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 3.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gợi ý thực đơn",
                        style: CustomTextStyles.titleSmallBluegray300,
                      ),
                      Text(
                        "2 phút trước",
                        style: CustomTextStyles.bodySmallGray900_1,
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bánh canh chả cá Nha Trang",
                        style: CustomTextStyles.titleMediumBold_2,
                      ),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 5.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.redA200,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
