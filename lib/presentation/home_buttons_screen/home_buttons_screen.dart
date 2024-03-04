import 'package:wemealkit/presentation/cart_screen/cart_screen.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../home_buttons_screen/widgets/recipecardlist1_item_widget.dart';
import '../home_buttons_screen/widgets/userprofilelist6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

class HomeButtonsScreen extends StatelessWidget {
  HomeButtonsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1484.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildRecipeCardRow(context),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Món ăn nổi bật",
                        style: CustomTextStyles.titleMediumBold18,
                      ),
                      SizedBox(height: 13.v),
                      _buildRecipeCardList(context),
                      SizedBox(height: 19.v),
                      Text(
                        "Truy cập nhanh",
                        style: CustomTextStyles.titleMediumBold18,
                      ),
                      SizedBox(height: 16.v),
                      _buildFrameStack(context),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: _buildFrameRow(
                          context,
                          dynamicText: "Chợ organic khao đến 150K",
                          dynamicText1: "Xem thêm",
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildCarouselRow(context),
                      SizedBox(height: 24.v),
                      Text(
                        "Danh mục ẩm thực",
                        style: CustomTextStyles.titleMediumBold18,
                      ),
                      SizedBox(height: 13.v),
                      _buildFrameRow2(context),
                      SizedBox(height: 5.v),
                      _buildFrameRow3(context),
                      SizedBox(height: 24.v),
                      Text(
                        "Bữa ăn của bạn thế nào?",
                        style: CustomTextStyles.titleMediumBold18,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Hãy review những món bạn đã từng nấu nhé.",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 16.v),
                      _buildUserProfileList(context),
                      SizedBox(height: 24.v),
                      Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: _buildFrameRow(
                          context,
                          dynamicText: "Có thể bạn muốn thử",
                          dynamicText1: "Xem thêm",
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: _buildInterest01Row(
                          context,
                          userImage: ImageConstant.imgBrookeLark08b52x52,
                          messageText: "Bánh mì sandwich gà nướng",
                          labelText: "4.5",
                          minuteCounterText: "20 phút",
                          mnnngText: "Món nướng",
                          nvtText: "Ăn vặt",
                          mthcVitText: "Ẩm thực Việt",
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildInterest01Row1(context),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: _buildInterest01Row(
                          context,
                          userImage: ImageConstant.imgBrookeLark08b5,
                          messageText: "Gỏi cuốn tôm thịt",
                          labelText: "4.3",
                          minuteCounterText: "25 phút",
                          mnnngText: "Món nướng",
                          nvtText: "Ăn vặt",
                          mthcVitText: "Ẩm thực Việt",
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildInterest0Row3(context),
                      SizedBox(height: 8.v),
                      _buildInterest0Row4(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 119.h,
                    vertical: 123.v,
                  ),
                  decoration: AppDecoration.fillBluegray70001,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 1297.v,
                            right: 12.h,
                          ),
                          child: CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(16.h),
                            decoration: IconButtonStyleHelper.fillOrangeTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMenuIconWheat,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 1297.v,
                          ),
                          child: CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.fillOrangeTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgIconlyLightCookOnerrorcontainer,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 56,
          width: 56,
          backgroundColor: appTheme.gray900,
          decoration: FloatingButtonStyleHelper.fillGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsUpOnerrorcontainer,
            height: 28.0.v,
            width: 28.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipeCardRow(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(21.h, 10.v, 24.h, 1418.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconlyLightCook,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Buổi chiều mát nhé",
                        style: CustomTextStyles.bodySmallGray900_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "Trần Hoàng Lâm",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsupBlueGray300,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 28.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipeCardList(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 189.v,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Recipecardlist1ItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return SizedBox(
      height: 34.v,
      width: 351.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 34.v,
                  width: 93.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 34.v,
                          width: 93.h,
                          decoration: BoxDecoration(
                            color: appTheme.orange700,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgTelevisionOnerrorcontainer19x16,
                                height: 19.v,
                                width: 16.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "Tủ bếp",
                                style: CustomTextStyles
                                    .titleSmallOnErrorContainer_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTelevisionOnerrorcontainer19x16,
                    height: 18.v,
                    width: 13.h,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 105.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 34.v,
                    width: 113.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 34.v,
                            width: 113.h,
                            decoration: BoxDecoration(
                              color: appTheme.orange700,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity: 0.8,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgMap,
                                  height: 19.v,
                                  width: 14.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "Khám phá",
                                  style: CustomTextStyles
                                      .titleSmallOnErrorContainer_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    child: Text(
                      "Cẩm nang",
                      style: CustomTextStyles.titleSmallOnErrorContainer_1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 230.h),
              padding: EdgeInsets.symmetric(vertical: 7.v),
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: CustomImageView(
                      imagePath:
                          ImageConstant.imgTelevisionOnerrorcontainer19x16,
                      height: 14.v,
                      width: 13.h,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "Món ngẫu nhiên",
                      style: CustomTextStyles.titleSmallOnErrorContainer_1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 34.v,
              width: 113.h,
              decoration: BoxDecoration(
                color: appTheme.orange700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCarouselRow(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle65133x264,
          height: 133.v,
          width: 264.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle651,
          height: 133.v,
          width: 264.h,
          radius: BorderRadius.circular(
            8.h,
          ),
          margin: EdgeInsets.only(left: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Row(
        children: [
          _buildFrameColumn(
            context,
            image: ImageConstant.imgThumbsUpOrange700,
            text: "Truyền thống",
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrameColumn1(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Món chiên",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrameColumn(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Hải sản",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildFrameColumn1(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Ăn vặt",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: _buildFrameColumn(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Mì & Phở",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
            ),
            child: _buildFrameColumn(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Ăn kiêng",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
            ),
            child: _buildFrameColumn1(
              context,
              image: ImageConstant.imgThumbsUpOrange700,
              text: "Làm bánh",
            ),
          ),
          Container(
            height: 69.v,
            width: 81.h,
            margin: EdgeInsets.only(left: 10.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                _buildFrameColumn(
                  context,
                  image: ImageConstant.imgGlobe,
                  text: "Quốc tế",
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimary,
                  height: 17.v,
                  width: 18.h,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 189.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofilelist6ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest01Row1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBrookeLark08b4,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hủ tiếu bò kho",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 7.v),
                _buildFrameRow1(
                  context,
                  label42: "4.2",
                  label40Minutes: "40 phút",
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 133.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 54.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "Mì & Phở",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Container(
                        width: 75.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "Ẩm thực Việt",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
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
  Widget _buildInterest0Row3(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBrookeLark08b6,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cơm rang dưa bò",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 5.v),
                _buildFrameRow1(
                  context,
                  label42: "4.1",
                  label40Minutes: "35 phút",
                ),
                SizedBox(height: 5.v),
                Container(
                  width: 75.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "Ẩm thực Việt",
                    style: theme.textTheme.labelMedium,
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
  Widget _buildInterest0Row4(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 19.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBrookeLark08b7,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Canh chua cá",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 6.v),
                _buildFrameRow1(
                  context,
                  label42: "4.1",
                  label40Minutes: "35 phút",
                ),
                SizedBox(height: 5.v),
                Container(
                  margin: EdgeInsets.only(right: 36.h),
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  decoration: AppDecoration.fillOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Text(
                        "Ẩm thực Việt",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFrameColumn(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: image,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            text,
            style: CustomTextStyles.labelMediumGray900.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameColumn1(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: image,
            height: 30.v,
            width: 25.h,
          ),
          SizedBox(height: 4.v),
          Text(
            text,
            style: CustomTextStyles.labelMediumGray900.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleMediumBold18.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 79.h,
            bottom: 4.v,
          ),
          child: Text(
            dynamicText1,
            style: CustomTextStyles.titleSmallOrange700.copyWith(
              color: appTheme.orange700,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameRow1(
    BuildContext context, {
    required String label42,
    required String label40Minutes,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            label42,
            style: CustomTextStyles.labelLargeBluegray70001.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 9.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            label40Minutes,
            style: CustomTextStyles.labelLargeBluegray70001.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInterest01Row(
    BuildContext context, {
    required String userImage,
    required String messageText,
    required String labelText,
    required String minuteCounterText,
    required String mnnngText,
    required String nvtText,
    required String mthcVitText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageText,
                  style: CustomTextStyles.titleSmallMedium.copyWith(
                    color: appTheme.gray900,
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        labelText,
                        style:
                            CustomTextStyles.labelLargeBluegray70001.copyWith(
                          color: appTheme.blueGray70001,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 9.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        minuteCounterText,
                        style:
                            CustomTextStyles.labelLargeBluegray70001.copyWith(
                          color: appTheme.blueGray70001,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 193.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 67.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          mnnngText,
                          style: theme.textTheme.labelMedium!.copyWith(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                          ),
                        ),
                      ),
                      Container(
                        width: 43.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          nvtText,
                          style: theme.textTheme.labelMedium!.copyWith(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                          ),
                        ),
                      ),
                      Container(
                        width: 75.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          mthcVitText,
                          style: theme.textTheme.labelMedium!.copyWith(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userorange70024x24:
        return AppRoutes.HomePage;
      case BottomBarEnum.Reply:
        return AppRoutes.discoverThreePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartScreen;
      case BottomBarEnum.Lockbluegray300:
        return AppRoutes.accountContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.HomePage:
        return HomePage();
      case AppRoutes.discoverThreePage:
        return DiscoverThreePage();
      case AppRoutes.accountContainerPage:
        return AccountContainerPage();
      case AppRoutes.cartScreen: 
        return CartScreen();
      default:
        return DefaultWidget();
    }
  }
}
