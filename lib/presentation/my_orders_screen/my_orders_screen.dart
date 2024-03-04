import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../my_orders_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';

import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              _buildUserProfile(context),
              Spacer(),
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
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Đơn hàng",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
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
