import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class AccountCreationSelectEquipmentScreen extends StatelessWidget {
  const AccountCreationSelectEquipmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 315.h,
                margin: EdgeInsets.only(right: 11.h),
                child: Text(
                  "Một số món ăn sẽ cần những dụng cụ làm bếp đặc biệt. Hãy điểm danh lại những thiết bị có sẵn trong bếp bạn nhé.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.45,
                  ),
                ),
              ),
              SizedBox(height: 39.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFrame(
                        context,
                        userImage: ImageConstant.imgBrookeLark08b,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.h, 10.v, 4.h, 8.v),
                        child: Text(
                          "Lò nướng",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildInterest01(context),
              Spacer(),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 12.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 5,
                    effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.49),
                      activeDotScale: 1.5,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildTiptc(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Thiết bị làm bếp",
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest01(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 11.h),
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 139.h,
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  decoration: AppDecoration.outlineTeal.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame723,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "Lò chiên không dầu",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 136.h,
                  margin: EdgeInsets.only(left: 16.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFrame(
                        context,
                        userImage: ImageConstant.imgBrookeLark08b36x36,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 10.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "Lò vi sóng",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 123.h,
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFrame(
                        context,
                        userImage: ImageConstant.imgBrookeLark08b1,
                      ),
                      Text(
                        "Máy xay sinh tố",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 136.h,
                  margin: EdgeInsets.only(left: 16.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.outlineTeal.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose1,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "Máy chiên ngập dầu",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 6.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 122.h,
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: AppDecoration.outlineTeal.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose1,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "Nồi hầm",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 141.h,
                  margin: EdgeInsets.only(left: 16.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFrame(
                        context,
                        userImage: ImageConstant.imgBrookeLark08b2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 10.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "Bếp nướng",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame723,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.h, 10.v, 4.h, 8.v),
                  child: Text(
                    "Máy nướng bánh mì",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTiptc(BuildContext context) {
    return CustomElevatedButton(
      text: "Tiếp tục ->",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 32.v,
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userImage,
  }) {
    return SizedBox(
      height: 36.adaptSize,
      width: 36.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 36.adaptSize,
            width: 36.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
