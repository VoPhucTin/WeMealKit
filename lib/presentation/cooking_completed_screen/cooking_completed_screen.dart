import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class CookingCompletedScreen extends StatelessWidget {
  const CookingCompletedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100.withOpacity(0.4),
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 433.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHermesRiveraO433x375,
                        height: 433.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 19.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildAppBar(context),
                              SizedBox(height: 41.v),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgHermesRiveraO207x207,
                                height: 207.adaptSize,
                                width: 207.adaptSize,
                                radius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 36.v,
                  ),
                  decoration: AppDecoration.outlineGrayA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 298.v),
                      CustomElevatedButton(
                        text: "Ăn thôi!",
                        buttonStyle: CustomButtonStyles.fillOrange,
                      ),
                    ],
                  ),
                ),
              ),
              _buildHurray(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 30.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Đậu hũ Tứ Xuyên",
      ),
    );
  }

  /// Section Widget
  Widget _buildHurray(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 169.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 309.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupBlueGray70001,
                    height: 196.v,
                    width: 145.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 5.v),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 309.v,
                      width: 272.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgConfetti,
                            height: 227.v,
                            width: 174.h,
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Yeah!",
                                  style: theme.textTheme.headlineLarge,
                                ),
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 169.h,
                                  child: Text(
                                    "Món ăn đã hoàn tất. Bon appétit!",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.bodyLarge18.copyWith(
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 107.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    "Chụp tấm hình chứ?",
                    style: CustomTextStyles.titleSmallSemiBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
