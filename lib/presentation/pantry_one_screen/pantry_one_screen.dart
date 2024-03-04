import '../pantry_one_screen/widgets/frame10_item_widget.dart';
import '../pantry_one_screen/widgets/frame8_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

class PantryOneScreen extends StatelessWidget {
  PantryOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              Container(
                width: 324.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 26.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Bạn đang có ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "34",
                        style: CustomTextStyles.titleMediumBold_1,
                      ),
                      TextSpan(
                        text:
                            " nguyên liệu. ICC sẽ nhắc bạn kiểm tra tủ bếp trước khi chọn món ăn!",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Thêm hoặc xoá nguyên liệu...",
                ),
              ),
              SizedBox(height: 20.v),
              _buildInterest01(context),
              SizedBox(height: 17.v),
              _buildInterest02(context),
              SizedBox(height: 14.v),
              _buildFrame(context),
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
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillOrangeTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nhập bằng giọng nói",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 187.h,
                  child: Text(
                    "Thêm nhiều nguyên liệu thật dễ dàng",
                    maxLines: 2,
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

  /// Section Widget
  Widget _buildInterest02(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBrookeLark08b8,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 5.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thiết yếu",
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                    Text(
                      "5/42",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownBlueGray70001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.indigo10001,
          ),
          SizedBox(height: 14.v),
          Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(12, (index) => Frame8ItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest03(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBrookeLark08b3,
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rau củ",
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "8/94",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray70001,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Divider(
                color: appTheme.indigo10001,
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children: List<Widget>.generate(9, (index) => Frame10ItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.gradientBlackToBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          _buildInterest03(context),
        ],
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
