import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wemealkit/model/darkmode_model.dart';
import 'package:wemealkit/service/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../account_container_page/widgets/orderlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

class AccountContainerPage extends ConsumerWidget {
  const AccountContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var darkMode = ref.watch(darkModeProvider);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  _buildProfile(context),
                  SizedBox(height: 22.v),
                  // _buildOrderList(context),
                  SizedBox(height: 22.v),
                  _buildContentOne(context),
                  SizedBox(height: 16.v),
                  _buildContentTwo(context),
                  SizedBox(height: 16.v),
                  _buildContentThree(context),
                  SizedBox(height: 16.v),
                  _buildContentFour(context, ref),
                  SizedBox(height: 22.v),
                  // _buildFrame(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true, title: AppbarTitle(text: "Góc của tôi"));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage11,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(24.h)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 11.v),
              child: Text("Võ Phúc Tín",
                  style: CustomTextStyles.titleMediumBold18)),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillErrorContainer,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildOrderList(BuildContext context) {
    List<OrderListItemData> orderItems = [
      OrderListItemData("Đơn hàng", ImageConstant.imgThumbsUpOrange700),
      OrderListItemData("Món ăn yêu thích", ImageConstant.imgThumbsUpOrange700),
      OrderListItemData("Bữa ăn của tôi", ImageConstant.imgThumbsUpOrange700),
    ];
    return SizedBox(
        height: 64.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 10.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return OrderlistItemWidget(
                itemName: orderItems[index].name,
                itemImagePath: orderItems[index].imagePath,
              );
            }));
  }
  

  /// Section Widget
  Widget _buildContentOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange700,
              height: 22.v,
              width: 16.h),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 3.v),
              child: Text("Thông báo", style: theme.textTheme.titleMedium)),
          Container(
              width: 18.adaptSize,
              margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.v),
              decoration: AppDecoration.fillGray9001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Text("2", style: theme.textTheme.labelMedium)),
          Spacer(),
          CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))
        ]));
  }

  /// Section Widget
  Widget _buildContentTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange700,
              height: 16.v,
              width: 18.h,
              margin: EdgeInsets.symmetric(vertical: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 3.v),
              child: Text("Mã khuyến mãi", style: theme.textTheme.titleMedium)),
          Container(
              width: 18.adaptSize,
              margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.v),
              decoration: AppDecoration.fillGray9001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Text("4", style: theme.textTheme.labelMedium)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildContentThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCreditCard,
              height: 16.v,
              width: 18.h,
              margin: EdgeInsets.symmetric(vertical: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 3.v),
              child: Text("Cài đặt thanh toán",
                  style: theme.textTheme.titleMedium)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildContentFour(BuildContext context, WidgetRef ref) {
    // var darkMode = ref.watch(darkModeProvider);
    return GestureDetector(
      onTap: () async {
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text('Đăng xuất')));
        FirebaseAuth.instance.signOut();
        Navigator.pushNamed(context, AppRoutes.loginCreateAccountOptionsScreen);
      },
      child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.outlineTeal
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgInfo, height: 22.v, width: 16.h),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 3.v),
                child: Text("Đăng Xuất", style: theme.textTheme.titleMedium)),
            Spacer(),
          ])),
    );
  }

  Widget _buildContentFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgInfo, height: 22.v, width: 16.h),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 3.v),
              child: Text("Trợ giúp", style: theme.textTheme.titleMedium)),
          Spacer(),
          CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 22.v),
        decoration: AppDecoration.outlineBluegray300,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 197.h,
                  margin: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                      "Bạn thích dùng WeMealKit?\nHãy cho chúng tôi 5 sao nhé!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallPrimary
                          .copyWith(height: 1.30))),
              CustomElevatedButton(
                  height: 30.v,
                  width: 93.h,
                  text: "Đánh giá",
                  margin: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 11.v),
                  buttonStyle: CustomButtonStyles.fillOrangeTL8)
            ]));
  }
}

class OrderListItemData {
  final String name;
  final String imagePath;

  OrderListItemData(this.name, this.imagePath);
}