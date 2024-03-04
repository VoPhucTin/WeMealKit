import 'package:wemealkit/presentation/home_container_screen/home_container_screen.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../my_dishes_screen/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

class MyDishesScreen extends StatelessWidget {
  MyDishesScreen({Key? key})
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 310.h,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "Đây là những món ăn bạn đã thử nấu gần đây. Hãy để lại một lời đánh giá nhé!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildSearchBar(context),
              SizedBox(height: 24.v),
              _buildUserProfile(context),
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
        text: "Bữa ăn của tôi",
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomSearchView(
            controller: searchController,
            hintText: "Tìm kiếm",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
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
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 190.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget();
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
