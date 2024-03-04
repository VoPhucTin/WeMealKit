import 'package:wemealkit/presentation/home_container_screen/home_container_screen.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../browse_one_screen/widgets/userprofilelist7_item_widget.dart';
import '../browse_one_screen/widgets/userprofilelist8_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

class BrowseOneScreen extends StatelessWidget {
  BrowseOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 14.h,
                    ),
                    child: Column(
                      children: [
                        _buildSearchBar(context),
                        SizedBox(height: 22.v),
                        _buildProfile(context),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Món hot bạn đã thử chưa?",
                            style: CustomTextStyles.titleMediumBold18,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildUserProfileList(context),
                        SizedBox(height: 29.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Vì bạn có ",
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                                TextSpan(
                                  text: "ức gà",
                                  style: CustomTextStyles
                                      .titleMediumOrange700Bold18
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildUserProfileList1(context),
                      ],
                    ),
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
          backgroundColor: appTheme.orange700,
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
        text: "Món ăn",
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "Tìm kiếm",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 54.adaptSize,
              width: 54.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillOrange,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 176.v,
        width: 327.h,
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.12,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupOnerrorcontainer,
                height: 144.v,
                width: 154.h,
                alignment: Alignment.topRight,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bạn có thể nấu",
                      style: CustomTextStyles.bodySmallGray900_1,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "282 món",
                      style: CustomTextStyles.titleLargeGray900,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "từ 34 nguyên liệu của bạn",
                      style: CustomTextStyles.bodySmallGray900_1,
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      height: 30.v,
                      text: "Cập nhật tủ bếp",
                      buttonStyle: CustomButtonStyles.fillGrayTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallBluegray70001Medium,
                    ),
                    SizedBox(height: 8.v),
                    CustomElevatedButton(
                      height: 30.v,
                      text: "Mở khoá thêm 433 món",
                      buttonStyle: CustomButtonStyles.fillOrangeTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnErrorContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 8.v,
        );
      },
      itemCount: 6,
      itemBuilder: (context, index) {
        return Userprofilelist7ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildUserProfileList1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Userprofilelist8ItemWidget();
        },
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userorange70024x24:
        return AppRoutes.HomePage;
      case BottomBarEnum.Reply:
        return AppRoutes.discoverThreePage;
      case BottomBarEnum.Cart:
        return "/";
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
      default:
        return DefaultWidget();
    }
  }
}
