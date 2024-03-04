import '../shopping_five_screen/widgets/frame20_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class ShoppingFiveScreen extends StatelessWidget {
  const ShoppingFiveScreen({Key? key})
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
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      right: 23.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame318x301,
                          height: 318.v,
                          width: 301.h,
                        ),
                        SizedBox(height: 36.v),
                        Container(
                          width: 248.h,
                          margin: EdgeInsets.only(
                            left: 37.h,
                            right: 41.h,
                          ),
                          child: Text(
                            "Đơn hàng của bạn đã được giao!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineMedium!.copyWith(
                              height: 1.30,
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildProfile(context),
                        SizedBox(height: 16.v),
                        _buildRatingAndReviews(context),
                        SizedBox(height: 16.v),
                        _buildFruits(context),
                        SizedBox(height: 11.v),
                        _buildDelivery(context),
                        SizedBox(height: 11.v),
                        _buildOffers(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildHelp(context),
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
  Widget _buildProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 52.h,
        vertical: 16.v,
      ),
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
                imagePath: ImageConstant.imgCheckmarkOrange700,
                height: 16.v,
                width: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 2.v,
                ),
                child: Text(
                  "Đã giao",
                  style: CustomTextStyles.labelLargeOrange700,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Text(
            "Tiệm Tạp Hoá Xanh - Gò Vấp",
            style: CustomTextStyles.titleMediumBold_2,
          ),
          SizedBox(height: 10.v),
          Text(
            "12h32 • 24/5/2023",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "141.000đ",
                style: theme.textTheme.labelLarge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "• Tiền mặt",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingAndReviews(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Đánh giá trải nghiệm mua hàng của bạn:",
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 16.v),
        Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(5, (index) => Frame20ItemWidget()),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFruits(BuildContext context) {
    return Container(
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
          _buildVegetables(
            context,
            dynamicText1: "Rau bí xanh",
            dynamicText2: "250g",
            dynamicText3: "10.000đ",
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cà chua cherry đỏ Đà Lạt",
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "500g",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              Text(
                "23.000đ",
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
          SizedBox(height: 9.v),
          _buildVegetables(
            context,
            dynamicText1: "Ức gà",
            dynamicText2: "1kg",
            dynamicText3: "55.000đ",
          ),
          SizedBox(height: 9.v),
          _buildVegetables(
            context,
            dynamicText1: "Cà rốt cọng tím",
            dynamicText2: "500g",
            dynamicText3: "24.000đ",
          ),
          SizedBox(height: 9.v),
          _buildVegetables(
            context,
            dynamicText1: "Trứng gà",
            dynamicText2: "1 vỉ (12 quả)",
            dynamicText3: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildVegetables(
            context,
            dynamicText1: "Đường phèn",
            dynamicText2: "1kg",
            dynamicText3: "32.000đ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDelivery(BuildContext context) {
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
  Widget _buildOffers(BuildContext context) {
    return Container(
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
              _buildPayment(
                context,
                dynamicText1: "Đơn giá",
                dynamicText2: "166.000đ",
              ),
            ],
          ),
          SizedBox(height: 10.v),
          _buildPayment(
            context,
            dynamicText1: "Phí giao hàng",
            dynamicText2: "22.000đ",
          ),
          SizedBox(height: 10.v),
          _buildPayment(
            context,
            dynamicText1: "Phí dịch vụ",
            dynamicText2: "3.000đ",
          ),
          SizedBox(height: 10.v),
          _buildPayment(
            context,
            dynamicText1: "Khuyến mãi",
            dynamicText2: "-50.000đ",
          ),
          SizedBox(height: 10.v),
          _buildPayment(
            context,
            dynamicText1: "Tổng đơn hàng",
            dynamicText2: "141.000đ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelp(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 43.v,
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
            text: "Hoàn thành",
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.fillOrange,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVegetables(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dynamicText1,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            dynamicText2,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
        Spacer(),
        Text(
          dynamicText3,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPayment(
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
