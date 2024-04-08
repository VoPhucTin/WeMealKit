import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class PaymentSettingsScreen extends StatelessWidget {
  PaymentSettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            SizedBox(height: 8.v),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                decoration: AppDecoration.outlineTeal
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  // Container(
                  //     padding: EdgeInsets.symmetric(
                  //         horizontal: 15.h, vertical: 9.v),
                  //     decoration: AppDecoration.outlineGray.copyWith(
                  //         borderRadius: BorderRadiusStyle.roundedBorder8),
                  //     child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           SizedBox(height: 1.v),
                  //           SizedBox(
                  //               width: 258.h,
                  //               child: Text(
                  //                   "Nhấn giữ mục bạn muốn để sắp xếp thứ tự ưu tiên thanh toán.",
                  //                   maxLines: 2,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   style: CustomTextStyles
                  //                       .bodySmallGray900_1
                  //                       .copyWith(height: 1.30)))
                  //         ])),
                  SizedBox(height: 16.v),
                  Container(
                      decoration: AppDecoration.outlineBlueGray,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 14.h, bottom: 16.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgImage121),
                                        fit: BoxFit.cover))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 7.v, bottom: 24.v),
                                child: Text("Ví MoMo",
                                    style: theme.textTheme.labelLarge)),
                            Spacer(),
                          ])),
                  SizedBox(height: 16.v),
                  Container(
                      decoration: AppDecoration.outlineBlueGray,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 14.h, bottom: 16.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgImage124),
                                        fit: BoxFit.cover))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 8.v, bottom: 24.v),
                                child: Text("Tiền mặt",
                                    style: theme.textTheme.labelLarge)),
                            Spacer(),
                          ])),
                  SizedBox(height: 17.v),
                  Text("+ Thêm phương thức thanh toán mới",
                      style: CustomTextStyles.titleSmallOrange700)
                ])),
            Spacer()
          ])),
      // bottomNavigationBar: _buildBottomBar(context),
      // floatingActionButton: CustomFloatingButton(
      //     height: 56, width: 56, child: Icon(Icons.add)),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.centerDocked
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: Container(
            height: 12.v,
            width: 15.h,
            margin: EdgeInsets.only(left: 28.h, top: 20.v, bottom: 23.v),
            child: Stack(alignment: Alignment.centerLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgStroke1,
                  height: 1.v,
                  width: 15.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 5.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftGray900,
                  height: 12.v,
                  width: 6.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: 9.h),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  })
            ])),
        centerTitle: true,
        title: AppbarTitle(text: "Cài đặt thanh toán"));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
