import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Row1ItemWidget extends StatelessWidget {
  const Row1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpOrange700,
            height: 30.v,
            width: 25.h,
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 40.h,
            child: Text(
              "Kỹ năng Sử dụng Dao",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelMediumGray900.copyWith(
                height: 1.30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
