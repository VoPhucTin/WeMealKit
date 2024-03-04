import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  const Userprofilelist3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 96.v),
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserDeepOrange40024x24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BƯỚC 1",
                  style: CustomTextStyles.labelLargeOrange700,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 275.h,
                  child: Text(
                    "Cho nấm khô và tảo bẹ kombu vào chén nhỏ hoặc và đổ nước phủ bề mặt.\nĐặt một miêng khăn giấy lên mặt nước để giữ nấm ngấm đều nước trong 10 phút.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.45,
                    ),
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
