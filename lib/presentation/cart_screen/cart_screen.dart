import '../cart_screen/widgets/userprofile7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_outlined_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key})
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
            padding: EdgeInsets.only(top: 12.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildUserProfile(context),
                  SizedBox(height: 29.v),
                  _buildThayDoi(context),
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
        text: "Giỏ đi chợ",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 12.v,
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return Userprofile7ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildThayDoi(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.h),
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
                    padding: EdgeInsets.only(left: 1.h),
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
                      CustomOutlinedButton(
                        width: 74.h,
                        text: "Thay đổi",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Container(
                width: 295.h,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration.outlineBlueGray,
                child: Text(
                  "Thêm ghi chú cho cửa hàng...",
                  style: CustomTextStyles.bodySmallBluegray300,
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineGray300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      child: Text(
                        "Áp dụng mã khuyến mãi tại đây",
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
            ],
          ),
        ),
        SizedBox(height: 29.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 303.h,
            margin: EdgeInsets.only(right: 23.h),
            child: Text(
              "Khi bạn đã hài lòng với đơn hàng, chúng tôi sẽ tìm đối tác cửa hàng thực phẩm phù hợp nhất cho bạn. Bạn sẽ được tham khảo giá từng sản phẩm trước khi thanh toán.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.45,
              ),
            ),
          ),
        ),
        SizedBox(height: 29.v),
        CustomElevatedButton(
          text: "Gửi đơn hàng ->",
          buttonStyle: CustomButtonStyles.fillOrange,
          onPressed: () {
             Navigator.pushNamed(
                          context, AppRoutes.shoppingTwoScreen);
          },
        ),
      ],
    );
  }
}
