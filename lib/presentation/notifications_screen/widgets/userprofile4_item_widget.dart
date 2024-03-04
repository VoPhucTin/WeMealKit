import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  const Userprofile4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBag,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 4.v,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Đơn hàng",
                        style: CustomTextStyles.bodyMediumBluegray300,
                      ),
                      Text(
                        "22/5",
                        style: CustomTextStyles.bodySmallGray900_1,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Đơn hàng",
                          style: theme.textTheme.bodyLarge,
                        ),
                        TextSpan(
                          text: " Tiệm Tạp Hoá Xan... ",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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
