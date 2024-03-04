import 'package:wemealkit/presentation/home_page/home_page.dart';

import '../order_information_screen/widgets/chipview2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class OrderInformationScreen extends StatelessWidget {
  OrderInformationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 23.h, right: 23.h, bottom: 10.v),
                              child: Column(children: [
                                _buildProfile(context),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "Đánh giá trải nghiệm mua hàng của bạn:",
                                        style: theme.textTheme.labelLarge)),
                                SizedBox(height: 16.v),
                                _buildChipView(context),
                                SizedBox(height: 16.v),
                                _buildProfileColumn(context),
                                SizedBox(height: 11.v),
                                _buildStack(context),
                                SizedBox(height: 11.v),
                                _buildProfileColumn1(context),
                                SizedBox(height: 28.v),
                                _buildRow(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 56, width: 56, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
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
        title: AppbarTitle(text: "Chi tiết đơn hàng"));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 16.v),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("",
                style: CustomTextStyles.bodySmallFontAwesome6ProOrange700),
            Padding(
                padding: EdgeInsets.only(left: 5.h, top: 2.v),
                child: Text("Đã giao",
                    style: CustomTextStyles.labelLargeOrange700))
          ]),
          SizedBox(height: 12.v),
          Text("Tiệm Tạp Hoá Xanh - Gò Vấp",
              style: CustomTextStyles.titleMediumBold_2),
          SizedBox(height: 10.v),
          Text("12h32 • 24/5/2023", style: theme.textTheme.bodySmall),
          SizedBox(height: 10.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("141.000đ", style: theme.textTheme.labelLarge),
            Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text("• Tiền mặt", style: theme.textTheme.bodySmall))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
            runSpacing: 8.v,
            spacing: 8.h,
            children:
                List<Widget>.generate(5, (index) => Chipview2ItemWidget())));
  }

  /// Section Widget
  Widget _buildProfileColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("",
                style: CustomTextStyles.bodySmallFontAwesome6ProOrange700),
            Padding(
                padding: EdgeInsets.only(left: 5.h, top: 2.v),
                child: Text("Đơn hàng #OG22PC89",
                    style: CustomTextStyles.labelLargeBluegray300)),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text("Sao chép",
                    style: CustomTextStyles.labelLargeOrange700Medium))
          ]),
          SizedBox(height: 9.v),
          _buildFrameRow(context,
              dynamicText1: "Rau bí xanh",
              dynamicText2: "250g",
              dynamicText3: "10.000đ"),
          SizedBox(height: 9.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Cà chua cherry đỏ Đà Lạt", style: theme.textTheme.labelLarge),
            SizedBox(
                width: 140.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child:
                              Text("500g", style: theme.textTheme.bodySmall)),
                      Text("23.000đ", style: theme.textTheme.labelLarge)
                    ]))
          ]),
          SizedBox(height: 9.v),
          _buildFrameRow(context,
              dynamicText1: "Ức gà",
              dynamicText2: "1kg",
              dynamicText3: "55.000đ"),
          SizedBox(height: 9.v),
          _buildFrameRow(context,
              dynamicText1: "Cà rốt cọng tím",
              dynamicText2: "500g",
              dynamicText3: "24.000đ"),
          SizedBox(height: 9.v),
          _buildFrameRow(context,
              dynamicText1: "Trứng gà",
              dynamicText2: "1 vỉ (12 quả)",
              dynamicText3: "22.000đ"),
          SizedBox(height: 10.v),
          _buildFrameRow(context,
              dynamicText1: "Đường phèn",
              dynamicText2: "1kg",
              dynamicText3: "32.000đ")
        ]));
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
        height: 107.v,
        width: 327.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 97.v,
                  width: 327.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray30001.withOpacity(0.22),
                      borderRadius: BorderRadius.circular(8.h),
                      border:
                          Border.all(color: appTheme.gray300, width: 1.h)))),
          Align(
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 21.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text("",
                                style: CustomTextStyles
                                    .bodySmallFontAwesome6ProOrange700),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("Giao đến",
                                    style:
                                        CustomTextStyles.labelLargeBluegray300))
                          ]),
                          SizedBox(height: 11.v),
                          Text("127B Đ. Lê Văn Duyệt",
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 4.v),
                          Text("Shipper đến thì gọi cho mình nhé",
                              style: CustomTextStyles.bodySmallGray900_1)
                        ])),
                Container(
                    height: 107.adaptSize,
                    width: 107.adaptSize,
                    margin: EdgeInsets.only(left: 11.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgImage13107x107),
                            fit: BoxFit.cover)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildProfileColumn1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(children: [
                  Text("",
                      style:
                          CustomTextStyles.bodySmallFontAwesome6ProOrange700),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("Chi tiết thanh toán",
                          style: CustomTextStyles.labelLargeBluegray300))
                ])),
            SizedBox(height: 10.v),
            _buildFrameRow1(context, text1: "Đơn giá", text2: "166.000đ")
          ]),
          SizedBox(height: 10.v),
          _buildFrameRow1(context, text1: "Phí giao hàng", text2: "22.000đ"),
          SizedBox(height: 10.v),
          _buildFrameRow1(context, text1: "Phí dịch vụ", text2: "3.000đ"),
          SizedBox(height: 10.v),
          _buildFrameRow1(context, text1: "Khuyến mãi", text2: "-50.000đ"),
          SizedBox(height: 10.v),
          _buildFrameRow1(context, text1: "Tổng đơn hàng", text2: "141.000đ")
        ]));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "Tôi cần trợ giúp",
              margin: EdgeInsets.only(right: 6.h),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.titleMediumBluegray70001)),
      Expanded(
          child: CustomElevatedButton(
              text: "Đặt lại",
              margin: EdgeInsets.only(left: 6.h),
              buttonStyle: CustomButtonStyles.fillOrange))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(dynamicText1,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(dynamicText2,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.blueGray70001))),
      Spacer(),
      Text(dynamicText3,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Common widget
  Widget _buildFrameRow1(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(text1,
          style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray900)),
      Text(text2,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray70001))
    ]);
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
