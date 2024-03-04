import '../account_creation_select_interests_screen/widgets/interestsframe_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class AccountCreationSelectInterestsScreen extends StatelessWidget {
  const AccountCreationSelectInterestsScreen({Key? key})
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
            horizontal: 24.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 303.h,
                  margin: EdgeInsets.only(right: 23.h),
                  child: Text(
                    "Hãy liệt kê những tính năng ưa thích của bạn ở đây.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              _buildInterestsFrame(context),
              Spacer(),
              SizedBox(height: 6.v),
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
            ],
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
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
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Sở thích nấu ăn",
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsFrame(BuildContext context) {
    return Wrap(
      runSpacing: 8.v,
      spacing: 8.h,
      children: List<Widget>.generate(8, (index) => InterestsframeItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Tiếp tục ->",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 32.v,
      ),
    );
  }
}
