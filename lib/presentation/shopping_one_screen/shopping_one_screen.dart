import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';

class ShoppingOneScreen extends StatelessWidget {
  const ShoppingOneScreen({Key? key})
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
            padding: EdgeInsets.only(top: 64.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIsolationMode,
                    height: 123.v,
                    width: 190.h,
                  ),
                  SizedBox(height: 61.v),
                  SizedBox(
                    width: 207.h,
                    child: Text(
                      "Đơn hàng đã được tiếp nhận",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.30,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 187.h,
                    child: Text(
                      "Đợi một chút nhé... đang tìm cửa hàng tốt nhất cho bạn.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildFrameRow1(context),
                  SizedBox(height: 23.v),
                  _buildProfileColumn(context),
                ],
              ),
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
  Widget _buildFrameRow1(BuildContext context) {
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
            child: _buildFrameColumn(
              context,
              dynamicText: "Kiểm trađơn hàng",
              dynamicText2: "12:24",
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
            child: _buildFrameColumn(
              context,
              dynamicText: "Tìmcửa hàng",
              dynamicText2: "-",
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
            child: _buildFrameColumn(
              context,
              dynamicText: "Chuẩn bịđơn hàng",
              dynamicText2: "-",
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
  Widget _buildProfileColumn(BuildContext context) {
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
          _buildFrameRow(
            context,
            dynamicText: "Rau bí xanh",
            dynamicText1: "250g",
            dynamicText2: "-",
          ),
          SizedBox(height: 10.v),
          _buildFrameRow(
            context,
            dynamicText: "Cà chua cherry đỏ Đà Lạt",
            dynamicText1: "500g",
            dynamicText2: "-",
          ),
          SizedBox(height: 9.v),
          _buildFrameRow(
            context,
            dynamicText: "Ức gà",
            dynamicText1: "1kg",
            dynamicText2: "-",
          ),
          SizedBox(height: 10.v),
          _buildFrameRow(
            context,
            dynamicText: "Cà rốt cọng tím",
            dynamicText1: "500g",
            dynamicText2: "-",
          ),
          SizedBox(height: 10.v),
          _buildFrameRow(
            context,
            dynamicText: "Trứng gà",
            dynamicText1: "1 vỉ (12 quả)",
            dynamicText2: "-",
          ),
          SizedBox(height: 10.v),
          _buildFrameRow(
            context,
            dynamicText: "Đường phèn",
            dynamicText1: "1kg",
            dynamicText2: "-",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameColumn(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText2,
  }) {
    return Column(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelLargeBluegray70001.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          dynamicText2,
          style: CustomTextStyles.labelLargeBluegray70001_1.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dynamicText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            dynamicText1,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
        Spacer(),
        Text(
          dynamicText2,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
