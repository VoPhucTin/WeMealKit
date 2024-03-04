import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange700,
                height: 16.v,
                width: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 2.v,
                ),
                child: Text(
                  "Đã giao",
                  style: CustomTextStyles.labelLargeOrange700,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "141.000đ",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "• Tiền mặt",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tiệm Tạp Hoá Xanh - Gò Vấp",
                      style: CustomTextStyles.titleMediumBold_2,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "6 món • 24/5/2023",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 45.h,
                  top: 5.v,
                  bottom: 7.v,
                ),
                child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillErrorContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Đặt lại?",
              style: CustomTextStyles.titleSmallOrange700,
            ),
          ),
        ],
      ),
    );
  }
}
