import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_outlined_button.dart';

class ShoppingTwoScreen extends StatelessWidget {
  const ShoppingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                  height: 319.v,
                  width: 239.h,
                ),
                SizedBox(height: 35.v),
                SizedBox(
                  width: 188.h,
                  child: Text(
                    "Xác nhận đơn hàng của bạn",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  width: 264.h,
                  margin: EdgeInsets.only(
                    left: 54.h,
                    right: 56.h,
                  ),
                  child: Text(
                    "Đã tìm được cửa hàng đối tác! Hãy kiểm tra đơn hàng trước khi thanh toán nhé.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                _buildOrderDetails(context),
                SizedBox(height: 23.v),
                _buildUserProfile(context),
                SizedBox(height: 33.v),
                _buildChangeSection(context),
              ],
            ),
          ),
        ),
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
        text: "Đơn hàng của bạn",
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray30001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: _buildTimeFrame(
              context,
              dynamicText: "Kiểm tra đơn hàng",
              dynamicText1: "12:24",
            ),
          ),
          SizedBox(
            height: 53.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.indigo10001,
              endIndent: 1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: _buildTimeFrame(
              context,
              dynamicText: "Tìm cửa hàng",
              dynamicText1: "12:26",
            ),
          ),
          SizedBox(
            height: 53.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.indigo10001,
              endIndent: 1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: _buildTimeFrame(
              context,
              dynamicText: "Chuẩn bị đơn hàng",
              dynamicText1: "-",
            ),
          ),
          SizedBox(
            height: 53.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.indigo10001,
              endIndent: 1.h,
            ),
          ),
          Column(
            children: [
              Text(
                "Đanggiao hàng",
                style: CustomTextStyles.labelLargeBluegray70001,
              ),
              SizedBox(height: 3.v),
              Text(
                "-",
                style: CustomTextStyles.labelLargeBluegray70001_1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangeButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 74.h,
      text: "Thay đổi",
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpOrange700,
                    height: 16.v,
                    width: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Đơn hàng #OG22PC89",
                      style: CustomTextStyles.labelLargeBluegray300,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "Sao chép",
                  style: CustomTextStyles.labelLargeOrange700Medium,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          _buildCherryDetails(
            context,
            message: "Rau bí xanh",
            weight: "250g",
            price: "10.000đ",
          ),
          SizedBox(height: 9.v),
          _buildCherryDetails(
            context,
            message: "Cà chua cherry đỏ Đà Lạt",
            weight: "500g",
            price: "23.000đ",
          ),
          SizedBox(height: 9.v),
          _buildCherryDetails(
            context,
            message: "Ức gà",
            weight: "1kg",
            price: "55.000đ",
          ),
          SizedBox(height: 9.v),
          _buildCherryDetails(
            context,
            message: "Cà rốt cọng tím",
            weight: "500g",
            price: "24.000đ",
          ),
          SizedBox(height: 9.v),
          _buildCherryDetails(
            context,
            message: "Trứng gà",
            weight: "1 vỉ (12 quả)",
            price: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildCherryDetails(
            context,
            message: "Đường phèn",
            weight: "1kg",
            price: "32.000đ",
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 34.v,
            width: 295.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    decoration: AppDecoration.outlineBluegray3001,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 5.v),
                        Text(
                          "166.000đ",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Text(
                      "Đơn giá",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpOrange700,
                        height: 16.v,
                        width: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Giao đến",
                          style: CustomTextStyles.labelLargeBluegray300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: Text(
                        "127B Đ. Lê Văn Duyệt",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    _buildChangeButton(context),
                  ],
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 271.h,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  decoration: AppDecoration.outlineBlueGray,
                  child: Text(
                    "Shipper đến thì gọi cho mình nhé",
                    style: CustomTextStyles.bodySmallGray900_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildDeliveryDetails(
            context,
            dynamicText1: "Phí giao hàng",
            dynamicText2: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildDeliveryDetails(
            context,
            dynamicText1: "Phí dịch vụ",
            dynamicText2: "3.000đ",
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Text(
                    "Đã áp dụng mã khuyến mãi",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillOrange,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildDeliveryDetails(
            context,
            dynamicText1: "Khuyến mãi",
            dynamicText2: "-50.000đ",
          ),
          SizedBox(height: 10.v),
          _buildDeliveryDetails(
            context,
            dynamicText1: "Tổng đơn hàng",
            dynamicText2: "141.000đ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildThayi(BuildContext context) {
  //   return CustomOutlinedButton(
  //     width: 74.h,
  //     text: "Thay đổi",
  //     margin: EdgeInsets.symmetric(vertical: 4.v),
  //   );
  // }

  /// Section Widget
  Widget _buildHunHng(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 59.v,
        text: "Huỷ đơn hàng",
        margin: EdgeInsets.only(right: 6.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray70001,
      ),
    );
  }

  /// Section Widget
  Widget _buildThanhTon(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 59.v,
        text: "Thanh toán",
        margin: EdgeInsets.only(left: 6.h),
        buttonStyle: CustomButtonStyles.fillOrange,
      ),
    );
  }

  /// Section Widget
  Widget _buildChangeSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.h, 12.v, 24.h, 13.v),
      decoration: AppDecoration.outlineGray3001,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage12,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 8.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "Tiền mặt",
                  style: CustomTextStyles.labelLargeMedium,
                ),
              ),
              Spacer(),
              CustomOutlinedButton(
                width: 74.h,
                text: "Thay đổi",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.paymentSettingsScreen);
                },
              )
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHunHng(context),
              _buildThanhTon(context),
            ],
          ),
          SizedBox(height: 23.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeFrame(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelLargeOrange700Medium.copyWith(
            color: appTheme.orange700,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          dynamicText1,
          style: CustomTextStyles.labelLargeBluegray70001_1.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCherryDetails(
    BuildContext context, {
    required String message,
    required String weight,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            weight,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
        Spacer(),
        Text(
          price,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDeliveryDetails(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText1,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          dynamicText2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
      ],
    );
  }
}
