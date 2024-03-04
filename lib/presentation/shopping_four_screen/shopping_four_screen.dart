import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class ShoppingFourScreen extends StatelessWidget {
  const ShoppingFourScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Column(
            children: [
              SizedBox(height: 35.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgObjectsBlueGray900,
                          height: 274.v,
                          width: 261.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 45.h),
                        ),
                        SizedBox(height: 58.v),
                        SizedBox(
                          width: 229.h,
                          child: Text(
                            "Thực phẩm sạch sắp đến bạn rồi!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineMedium!.copyWith(
                              height: 1.30,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        SizedBox(
                          width: 207.h,
                          child: Text(
                            "Đối tác giao hàng đã xuất phát, đợi một xíu thôi nhé!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.45,
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildFrameTwo(context),
                        SizedBox(height: 23.v),
                        _buildProfile(context),
                        SizedBox(height: 11.v),
                        _buildProfileStack(context),
                        SizedBox(height: 11.v),
                        _buildFrameFive(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrameSix(context),
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
  Widget _buildFrameTwo(BuildContext context) {
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
            child: _buildFrameOne(
              context,
              dynamicText: "Kiểm tra đơn hàng",
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
            child: _buildFrameOne(
              context,
              dynamicText: "Tìm cửa hàng",
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
            child: _buildFrameOne(
              context,
              dynamicText: "Chuẩn bị đơn hàng",
              dynamicText1: "12:33",
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
                "Đang giao hàng",
                style: CustomTextStyles.labelLargeOrange700Medium,
              ),
              SizedBox(height: 2.v),
              Text(
                "12:33",
                style: CustomTextStyles.labelLargeBluegray70001_1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
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
              Spacer(),
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
          _buildFrameThree(
            context,
            message: "Rau bí xanh",
            weight: "250g",
            price: "10.000đ",
          ),
          SizedBox(height: 9.v),
          _buildFrameThree(
            context,
            message: "Cà chua cherry đỏ Đà Lạt",
            weight: "500g",
            price: "23.000đ",
          ),
          SizedBox(height: 9.v),
          _buildFrameThree(
            context,
            message: "Ức gà",
            weight: "1kg",
            price: "55.000đ",
          ),
          SizedBox(height: 9.v),
          _buildFrameThree(
            context,
            message: "Cà rốt cọng tím",
            weight: "500g",
            price: "24.000đ",
          ),
          SizedBox(height: 9.v),
          _buildFrameThree(
            context,
            message: "Trứng gà",
            weight: "1 vỉ (12 quả)",
            price: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildFrameThree(
            context,
            message: "Đường phèn",
            weight: "1kg",
            price: "32.000đ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileStack(BuildContext context) {
    return SizedBox(
      height: 107.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: 11.v),
                  Text(
                    "127B Đ. Lê Văn Duyệt",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "Shipper đến thì gọi cho mình nhé",
                    style: CustomTextStyles.bodySmallGray900_1,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage13,
            height: 107.adaptSize,
            width: 107.adaptSize,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 10.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpOrange700,
                      height: 17.v,
                      width: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Chi tiết thanh toán",
                        style: CustomTextStyles.labelLargeBluegray300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              _buildFrameFour(
                context,
                dynamicText1: "Đơn giá",
                dynamicText2: "166.000đ",
              ),
            ],
          ),
          SizedBox(height: 10.v),
          _buildFrameFour(
            context,
            dynamicText1: "Phí giao hàng",
            dynamicText2: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildFrameFour(
            context,
            dynamicText1: "Phí dịch vụ",
            dynamicText2: "3.000đ",
          ),
          SizedBox(height: 10.v),
          _buildFrameFour(
            context,
            dynamicText1: "Khuyến mãi",
            dynamicText2: "-50.000đ",
          ),
          SizedBox(height: 10.v),
          _buildFrameFour(
            context,
            dynamicText1: "Tổng đơn hàng",
            dynamicText2: "141.000đ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 32.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 157.h,
            text: "Tôi cần trợ giúp",
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray70001,
          ),
          CustomElevatedButton(
            width: 157.h,
            text: "Đã nhận hàng",
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.fillOrange,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameOne(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          dynamicText1,
          style: CustomTextStyles.labelLargeBluegray300_1.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameThree(
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
  Widget _buildFrameFour(
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
