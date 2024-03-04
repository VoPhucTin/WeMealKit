import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_courses_page/discover_courses_page.dart';
import 'package:wemealkit/presentation/discover_one_page/discover_one_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/presentation/discover_two_page/discover_two_page.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';

import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';

class DiscoverCoursesTabContainerScreen extends StatefulWidget {
  const DiscoverCoursesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverCoursesTabContainerScreenState createState() =>
      DiscoverCoursesTabContainerScreenState();
}

class DiscoverCoursesTabContainerScreenState
    extends State<DiscoverCoursesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 1409.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            DiscoverOnePage(),
                            DiscoverTwoPage(),
                            DiscoverCoursesPage(),
                          ],
                        ),
                      ),
                    ],
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
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Khám phá",
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 56.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          8.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Cộng đồng",
            ),
          ),
          Tab(
            child: Text(
              "Cẩm nang",
            ),
          ),
          Tab(
            child: Text(
              "Khoá học",
            ),
          ),
        ],
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
