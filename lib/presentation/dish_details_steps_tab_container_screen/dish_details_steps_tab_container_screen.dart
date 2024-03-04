import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../dish_details_steps_tab_container_screen/widgets/chipview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/presentation/dish_details_ingredients_page/dish_details_ingredients_page.dart';
import 'package:wemealkit/presentation/dish_details_steps_page/dish_details_steps_page.dart';

import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_rating_bar.dart';

class DishDetailsStepsTabContainerScreen extends StatefulWidget {
  const DishDetailsStepsTabContainerScreen({Key? key}) : super(key: key);

  @override
  DishDetailsStepsTabContainerScreenState createState() =>
      DishDetailsStepsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class DishDetailsStepsTabContainerScreenState
    extends State<DishDetailsStepsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 2319.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildDishDetailsSteps(context),
                          CustomImageView(
                              imagePath: ImageConstant.imgBg,
                              height: 1258.v,
                              width: 375.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 236.v)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 23.h),
                                        child: Text("Đậu hũ Tứ Xuyên",
                                            style:
                                                theme.textTheme.headlineSmall)),
                                    SizedBox(height: 2.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text("4.5",
                                                  style: CustomTextStyles
                                                      .labelLargeMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: CustomRatingBar(
                                                  initialRating: 0))
                                        ])),
                                    SizedBox(height: 11.v),
                                    _buildChipView(context),
                                    SizedBox(height: 16.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h, right: 83.h),
                                        child: Row(children: [
                                          SizedBox(
                                              width: 108.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 40.adaptSize,
                                                        width: 40.adaptSize,
                                                        padding:
                                                            EdgeInsets.all(8.h),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCalories)),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 11.v),
                                                        child: Text("120 Kcal",
                                                            style: CustomTextStyles
                                                                .titleSmallMedium))
                                                  ])),
                                          Container(
                                              width: 104.h,
                                              margin:
                                                  EdgeInsets.only(left: 56.h),
                                              child: Row(children: [
                                                CustomIconButton(
                                                    height: 40.adaptSize,
                                                    width: 40.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(8.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgClockBlack90001)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 12.h,
                                                        top: 12.v,
                                                        bottom: 10.v),
                                                    child: Text("30 phút",
                                                        style: CustomTextStyles
                                                            .titleSmallMedium))
                                              ]))
                                        ])),
                                    SizedBox(height: 16.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h, right: 64.h),
                                        child: Row(children: [
                                          SizedBox(
                                              width: 112.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 40.adaptSize,
                                                        width: 40.adaptSize,
                                                        padding:
                                                            EdgeInsets.all(8.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgThumbsupBlueGray300)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v,
                                                                bottom: 3.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("4 người",
                                                                  style: CustomTextStyles
                                                                      .titleSmallMedium),
                                                              Text("Bảo quản?",
                                                                  style: CustomTextStyles
                                                                      .bodySmallGray900_1
                                                                      .copyWith(
                                                                          decoration:
                                                                              TextDecoration.underline))
                                                            ]))
                                                  ])),
                                          Container(
                                              width: 123.h,
                                              margin:
                                                  EdgeInsets.only(left: 52.h),
                                              child: Row(children: [
                                                CustomIconButton(
                                                    height: 40.adaptSize,
                                                    width: 40.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(8.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSettingsBlack90001)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 12.h,
                                                        top: 12.v,
                                                        bottom: 10.v),
                                                    child: Text("Trung bình",
                                                        style: CustomTextStyles
                                                            .titleSmallMedium))
                                              ]))
                                        ])),
                                    SizedBox(height: 15.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 321.h,
                                            margin: EdgeInsets.only(
                                                left: 24.h, right: 30.h),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Món đậu hũ chay tuyệt nhất, hòa quyện hương vị đậm đà và thơm ngon. ",
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  TextSpan(
                                                      text: "Xem thêm",
                                                      style: CustomTextStyles
                                                          .titleMediumSemiBold)
                                                ]),
                                                textAlign: TextAlign.left))),
                                    SizedBox(height: 15.v),
                                    _buildTabview(context),
                                    SizedBox(
                                        height: 1711.v,
                                        child: TabBarView(
                                            controller: tabviewController,
                                            children: [
                                              DishDetailsStepsPage(),
                                              DishDetailsIngredientsPage()
                                            ]))
                                  ]))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 56,
                backgroundColor: appTheme.orange700,
                child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpOnerrorcontainer,
                    height: 28.0.v,
                    width: 28.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildDishDetailsSteps(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 276.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgHermesRiveraO276x375,
                  height: 276.v,
                  width: 375.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      height: 52.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 44.v,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, 0.21),
                                        end: Alignment(0.5, 0.95),
                                        colors: [
                                      appTheme.black90001.withOpacity(0.5),
                                      appTheme.black90001.withOpacity(0.5)
                                    ])))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 12.v, right: 24.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomIconButton(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          decoration: IconButtonStyleHelper
                                              .outlineOnErrorContainer,
                                          onTap: () {
                                            onTapBtnClose(context);
                                          },
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseBlack90001)),
                                      CustomIconButton(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          decoration:
                                              IconButtonStyleHelper.outlineTeal,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFavorite))
                                    ])))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children:
                List<Widget>.generate(3, (index) => ChipviewItemWidget())));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 62.v,
        width: 327.h,
        decoration: BoxDecoration(
            color: appTheme.gray300, borderRadius: BorderRadius.circular(8.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.gray900,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            indicatorPadding: EdgeInsets.all(8.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(8.h)),
            tabs: [
              Tab(child: Text("Nguyên liệu")),
              Tab(child: Text("Chế biến"))
            ]));
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
  onTapBtnClose(BuildContext context) {
    Navigator.pop(context);
  }
}
