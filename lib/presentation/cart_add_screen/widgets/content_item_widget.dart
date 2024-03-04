import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ContentItemWidget extends StatelessWidget {
  const ContentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBg155x155,
            height: 155.adaptSize,
            width: 155.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 13.v),
          Text(
            "Đường nâu",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 3.v),
          Row(
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
                  left: 6.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "250g",
                  style: CustomTextStyles.titleSmallBluegray70001Medium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpOrange70024x24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
