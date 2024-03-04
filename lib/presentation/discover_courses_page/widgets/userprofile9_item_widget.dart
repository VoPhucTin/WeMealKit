import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  const Userprofile9ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
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
                width: 240.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle65162x240,
                      height: 162.v,
                      width: 240.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 107.h,
                        margin: EdgeInsets.only(
                          right: 7.h,
                          bottom: 7.v,
                        ),
                        padding: EdgeInsets.all(6.h),
                        decoration:
                            AppDecoration.fillOnErrorContainer1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hoàn thành ",
                                style: CustomTextStyles.labelLargeMedium_1,
                              ),
                              TextSpan(
                                text: "7/12",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "Lăn Vào Bếp",
                style: CustomTextStyles.titleMediumBold_2,
              ),
              SizedBox(height: 5.v),
              Container(
                width: 236.h,
                margin: EdgeInsets.only(right: 4.h),
                child: Text(
                  "Tất tần tận về nấu ăn cho người mới bắt đầu. Bạn chưa biết gì hết? Để chúng tôi lo.",
                  maxLines: 3,
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
                    imagePath: ImageConstant.imgImage1528x28,
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
                              "Đầu bếp Quang Huy",
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
                            "12 bài giảng • 1h12p ",
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
        ),
      ),
    );
  }
}
