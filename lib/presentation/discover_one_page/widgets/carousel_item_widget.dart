import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class CarouselItemWidget extends StatelessWidget {
  const CarouselItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle65133x264,
          height: 133.v,
          width: 264.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
      ),
    );
  }
}
