import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';

import '../notifications_screen/widgets/dynamicview_item_widget.dart';
import '../notifications_screen/widgets/userprofile4_item_widget.dart';

// ignore: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildDynamicView(context),
              SizedBox(height: 11.v),
              // _buildUserProfile(context),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
        // floatingActionButton: CustomFloatingButton(
        //   height: 56,
        //   width: 56,
        //   backgroundColor: appTheme.orange700,
        //   child: CustomImageView(
        //     imagePath: ImageConstant.imgThumbsUpOnerrorcontainer,
        //     height: 28.0.v,
        //     width: 28.0.h,
        //   ),
        // ),
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
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Thông báo",
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hôm nay",
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 11.v),
        ListView.separated(
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
          itemCount: 2,
          itemBuilder: (context, index) {
            return DynamicviewItemWidget();
          },
        ),
        SizedBox(height: 25.v),
        Text(
          "Hôm qua",
          style: theme.textTheme.titleLarge,
        ),
      ],
    );
  }

  /// Section Widget
  // Widget _buildUserProfile(BuildContext context) {
  //   return ListView.separated(
  //     physics: NeverScrollableScrollPhysics(),
  //     shrinkWrap: true,
  //     separatorBuilder: (
  //       context,
  //       index,
  //     ) {
  //       return SizedBox(
  //         height: 16.v,
  //       );
  //     },
  //     itemCount: 4,
  //     itemBuilder: (context, index) {
  //       return Userprofile4ItemWidget();
  //     },
  //   );
  // }

  /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomAppBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Userorange70024x24:
  //       return AppRoutes.HomePage;
  //     case BottomBarEnum.Reply:
  //       return AppRoutes.discoverThreePage;
  //     case BottomBarEnum.Cart:
  //       return "/";
  //     case BottomBarEnum.Lockbluegray300:
  //       return AppRoutes.accountContainerPage;
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.HomePage:
  //       return HomePage();
  //     case AppRoutes.discoverThreePage:
  //       return DiscoverThreePage();
  //     case AppRoutes.accountContainerPage:
  //       return AccountContainerPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
