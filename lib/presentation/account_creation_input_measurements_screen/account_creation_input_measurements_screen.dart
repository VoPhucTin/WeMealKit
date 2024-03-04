import '../account_creation_input_measurements_screen/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';

class AccountCreationInputMeasurementsScreen extends StatelessWidget {
  const AccountCreationInputMeasurementsScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 310.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    right: 21.h,
                  ),
                  child: Text(
                    "Để đảm bảo các đề xuất từ I.T. Can Cook thật chính xác, hãy kể về bản thân nhé!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              _buildGiITNh(context),
              SizedBox(height: 17.v),
              _buildUserProfileList(context),
              SizedBox(height: 63.v),
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
              SizedBox(height: 9.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildTipTc(context),
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
        text: "Thông tin cơ bản",
      ),
    );
  }

  /// Section Widget
  Widget _buildGiITNh(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Giới tính",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: _buildRow02(
                    context,
                    n: "Nam",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: _buildRow02(
                    context,
                    n: "Nữ",
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
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 17.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTipTc(BuildContext context) {
    return CustomElevatedButton(
      text: "Tiếp tục ->",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 32.v,
      ),
    );
  }

  /// Common widget
  Widget _buildRow02(
    BuildContext context, {
    required String n,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserSecondarycontainer,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 13.v,
                bottom: 14.v,
              ),
              child: Text(
                n,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
