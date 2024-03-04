import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 200.v,
        width: 302.h,
        margin: EdgeInsets.only(
          left: 266.h,
          right: 36.h,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 200.v,
              width: 302.h,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
            ),
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.fillOnErrorContainerTL24,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconlyLightPlay,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
