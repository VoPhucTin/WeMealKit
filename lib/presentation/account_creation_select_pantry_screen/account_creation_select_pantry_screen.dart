import '../account_creation_select_pantry_screen/widgets/frame2_item_widget.dart';
import '../account_creation_select_pantry_screen/widgets/frame_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_subtitle.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

class AccountCreationSelectPantryScreen extends StatelessWidget {
  AccountCreationSelectPantryScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Thêm hoặc xoá nguyên liệu...",
                ),
              ),
              SizedBox(height: 20.v),
              _buildInterest01Row(context),
              SizedBox(height: 20.v),
              _buildInterest01Column(context),
              SizedBox(height: 11.v),
              _buildFrameColumn(context),
              SizedBox(height: 21.v),
              SizedBox(
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
              SizedBox(height: 4.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildHoanThanhButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Bếp của bạn",
      ),
      actions: [
        AppbarSubtitle(
          text: "Bỏ qua",
          margin: EdgeInsets.fromLTRB(23.h, 24.v, 23.h, 19.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildInterest01Row(BuildContext context) {
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
  Widget _buildInterest01Column(BuildContext context) {
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
                imagePath: ImageConstant.imgBrookeLark08b42x42,
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
                      style: CustomTextStyles.bodySmallGray900_1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownSecondarycontainer,
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
            children: List<Widget>.generate(12, (index) => FrameItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.gradientBlackToBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          Container(
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
                                style: CustomTextStyles.bodySmallGray900_1,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgArrowDownSecondarycontainer,
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
                  children:
                      List<Widget>.generate(12, (index) => Frame2ItemWidget()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHoanThanhButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Hoàn thành - 34 nguyên liệu ",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 31.v,
      ),
    );
  }
}
