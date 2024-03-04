import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  const Userprofile8ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 119.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder8,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrame730189x119,
              ),
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration:
              AppDecoration.gradientBlackToBlack900011.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage14,
                height: 24.adaptSize,
                width: 24.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              SizedBox(height: 132.v),
              Text(
                "Bách hoá cô Hoa",
                style: CustomTextStyles.labelLargeOnErrorContainerMedium,
              ),
              SizedBox(height: 1.v),
            ],
          ),
        ),
      ),
    );
  }
}
