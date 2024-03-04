import '../pantry_two_screen/widgets/frame12_item_widget.dart';
import '../pantry_two_screen/widgets/interest03_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class PantryTwoScreen extends StatelessWidget {
  const PantryTwoScreen({Key? key})
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
            vertical: 2.v,
          ),
          child: Column(
            children: [
              _buildInterest01(context),
              SizedBox(height: 22.v),
              Divider(
                color: appTheme.indigo10001,
              ),
              SizedBox(height: 16.v),
              _buildInterest02(context),
              SizedBox(height: 25.v),
              _buildInterest03(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildHoanThanh34NguyenLieu(context),
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
        text: "Tủ bếp",
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest01(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: appTheme.indigo10001,
          ),
          SizedBox(height: 14.v),
          Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(10, (index) => Frame12ItemWidget()),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest02(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Thiết bị làm bếp",
            style: CustomTextStyles.titleSmallMedium,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 288.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Text(
              "Một số món ăn sẽ cần những dụng cụ làm bếp đặc biệt. Hãy điểm danh lại những thiết bị có sẵn trong bếp bạn nhé.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.45,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest03(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        runSpacing: 16.v,
        spacing: 16.h,
        children: List<Widget>.generate(8, (index) => Interest03ItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildHoanThanh34NguyenLieu(BuildContext context) {
    return CustomElevatedButton(
      text: "Hoàn thành - 34 nguyên liệu ",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 32.v,
      ),
    );
  }
}
