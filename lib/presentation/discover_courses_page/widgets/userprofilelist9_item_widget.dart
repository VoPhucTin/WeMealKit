import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofilelist9ItemWidget extends StatelessWidget {
  const Userprofilelist9ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 162.v,
            width: 303.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle65162x303,
                  height: 162.v,
                  width: 303.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 28.v,
                  width: 61.h,
                  text: "39.000đ",
                  margin: EdgeInsets.only(
                    right: 7.h,
                    bottom: 7.v,
                  ),
                  buttonStyle: CustomButtonStyles.fillOnErrorContainerTL8,
                  buttonTextStyle: CustomTextStyles.labelLargeMedium,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "Thành Thạo Kỹ Năng Cắt Gọt",
            style: CustomTextStyles.titleMediumBold_2,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 281.h,
            margin: EdgeInsets.only(right: 22.h),
            child: Text(
              "Học cách sử dụng dao điêu luyện và thực hiện những kỹ thuật cắt chuyên nghiệp để nâng cao tốc độ và độ chính xác trong quá trình nấu ăn.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.45,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage153,
                height: 28.adaptSize,
                width: 28.adaptSize,
                radius: BorderRadius.circular(
                  14.h,
                ),
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Đầu bếp Phương Thảo",
                          style: CustomTextStyles.labelLargeBluegray70001,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkOrange700,
                          height: 16.v,
                          width: 12.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Opacity(
                      opacity: 0.75,
                      child: Text(
                        "6 bài giảng • 39p ",
                        style: CustomTextStyles.labelMediumBluegray7000111,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
