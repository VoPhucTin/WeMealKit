import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/discover_three_page/discover_three_page.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';
import 'package:wemealkit/widgets/custom_floating_text_field.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CourseDetailScreen extends StatelessWidget {
  CourseDetailScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  TextEditingController timeController1 = TextEditingController();

  TextEditingController timeController2 = TextEditingController();

  TextEditingController timeController3 = TextEditingController();

  TextEditingController timeController4 = TextEditingController();

  TextEditingController timeController5 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 1334.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        _buildHermesRiveraO(context),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.h, vertical: 26.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgBg),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 6.v),
                                      _buildSHu(context),
                                      SizedBox(height: 8.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Lăn Vào Bếp",
                                              style: theme
                                                  .textTheme.headlineSmall)),
                                      SizedBox(height: 5.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage1528x28,
                                                height: 28.adaptSize,
                                                width: 28.adaptSize,
                                                radius: BorderRadius.circular(
                                                    14.h)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 7.h,
                                                    top: 6.v,
                                                    bottom: 6.v),
                                                child: Text("Đầu bếp Quang Huy",
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray70001)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCheckmarkOrange700,
                                                height: 16.v,
                                                width: 12.h,
                                                margin: EdgeInsets.only(
                                                    left: 6.h,
                                                    top: 6.v,
                                                    bottom: 5.v))
                                          ])),
                                      SizedBox(height: 16.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 72.h),
                                              child: Row(children: [
                                                SizedBox(
                                                    width: 131.h,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomIconButton(
                                                              height:
                                                                  40.adaptSize,
                                                              width:
                                                                  40.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.h),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSettingsBlack90001)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 12.v,
                                                                      bottom:
                                                                          10.v),
                                                              child: Text(
                                                                  "12 bài giảng",
                                                                  style: CustomTextStyles
                                                                      .titleSmallMedium))
                                                        ])),
                                                Spacer(),
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
                                                    child: Text("1h12p",
                                                        style: CustomTextStyles
                                                            .titleSmallMedium))
                                              ]))),
                                      SizedBox(height: 15.v),
                                      _buildEditText1(context),
                                      SizedBox(height: 16.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Bài giảng",
                                              style: CustomTextStyles
                                                  .titleMediumBold18)),
                                      SizedBox(height: 13.v),
                                      _buildTime(context),
                                      SizedBox(height: 8.v),
                                      _buildTime1(context),
                                      SizedBox(height: 8.v),
                                      _buildTime2(context),
                                      SizedBox(height: 8.v),
                                      _buildTime3(context),
                                      SizedBox(height: 8.v),
                                      _buildTime4(context),
                                      SizedBox(height: 8.v),
                                      _buildTime5(context),
                                      SizedBox(height: 8.v),
                                      _buildTime6(context),
                                      SizedBox(height: 8.v),
                                      _buildTime7(context),
                                      SizedBox(height: 8.v),
                                      _buildTime8(context),
                                      SizedBox(height: 8.v),
                                      _buildTime9(context),
                                      SizedBox(height: 8.v),
                                      _buildTime10(context),
                                      SizedBox(height: 8.v),
                                      _buildTime11(context)
                                    ])))
                      ])),
                  Container(
                      height: 10.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray30001)),
                  SizedBox(height: 18.v),
                  _buildChiTiTKhoHC(context)
                ]))),
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
  Widget _buildHermesRiveraO(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 276.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgHermesRiveraO1,
                  height: 276.v,
                  width: 375.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topCenter,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 52.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
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
                          Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  decoration: IconButtonStyleHelper
                                      .outlineOnErrorContainer,
                                  alignment: Alignment.bottomLeft,
                                  onTap: () {
                                    onTapBtnClose(context);
                                  },
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseBlack90001)))
                        ])),
                    SizedBox(height: 32.v),
                    Container(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: AppDecoration.fillOnErrorContainer2
                            .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder32),
                        child: CustomIconButton(
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            padding: EdgeInsets.all(13.h),
                            decoration: IconButtonStyleHelper
                                .outlineOnErrorContainerTL22,
                            alignment: Alignment.center,
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgUserOnerrorcontainer1)))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildSHu(BuildContext context) {
    return CustomElevatedButton(
        height: 24.v,
        width: 70.h,
        text: "Đã sở hữu",
        buttonStyle: CustomButtonStyles.fillOrangeTL8,
        buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainerMedium,
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
        width: 327.h,
        controller: editTextController,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray1,
        filled: false);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return SizedBox(
        height: 60.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          _buildEditText(context),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 318.h,
                  child: Text(
                      "Tất tần tận về nấu ăn cho người mới bắt đầu. Bạn chưa biết gì hết? Để chúng tôi lo.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.45))))
        ]));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController,
        labelText: "04:14",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "04:14",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime1(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController1,
        labelText: "07:31",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "07:31",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime2(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController2,
        labelText: "06:45",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "06:45",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime3(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController3,
        labelText: "05:53",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "05:53",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime4(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
        decoration: AppDecoration.outlineGray3002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("12:41", style: CustomTextStyles.bodySmallBluegray300),
                    SizedBox(
                        width: 212.h,
                        child: Text("Cách nấu các món chính truyền thống",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallSemiBold
                                .copyWith(height: 1.30)))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkOrange7001,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 16.v))
        ]));
  }

  /// Section Widget
  Widget _buildTime5(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController4,
        labelText: "4:59",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "4:59",
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime6(BuildContext context) {
    return CustomFloatingTextField(
        controller: timeController5,
        labelText: "06:31",
        labelStyle: CustomTextStyles.titleSmallSemiBold,
        hintText: "06:31",
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOrange7001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildTime7(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
        decoration: AppDecoration.outlineOrange700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("05:45",
                            style: CustomTextStyles.bodySmallBluegray300),
                        SizedBox(
                            width: 235.h,
                            child: Text(
                                "Kỹ thuật chế biến món tráng miệng tuyệt vời",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallSemiBold
                                    .copyWith(height: 1.30)))
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 43.h, top: 16.v, bottom: 16.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child: CustomImageView(imagePath: ImageConstant.img)))
        ]));
  }

  /// Section Widget
  Widget _buildTime8(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineOrange700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("06:15", style: CustomTextStyles.bodySmallBluegray300),
                SizedBox(
                    width: 240.h,
                    child: Text("Món ăn chay ngon miệng cho người mới",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallSemiBold
                            .copyWith(height: 1.30)))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 38.h, top: 14.v, bottom: 14.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child: CustomImageView(imagePath: ImageConstant.img)))
        ]));
  }

  /// Section Widget
  Widget _buildTime9(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
        decoration: AppDecoration.outlineOrange700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("05:12", style: CustomTextStyles.bodySmallBluegray300),
                SizedBox(height: 2.v),
                Text("Kỹ năng trang trí và bày biện món ăn",
                    style: CustomTextStyles.titleSmallSemiBold)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 33.h, top: 5.v, bottom: 5.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child: CustomImageView(imagePath: ImageConstant.img)))
        ]));
  }

  /// Section Widget
  Widget _buildTime10(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
        decoration: AppDecoration.outlineOrange700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("03:54", style: CustomTextStyles.bodySmallBluegray300),
                    SizedBox(
                        width: 221.h,
                        child: Text("Cách làm món ăn vặt đơn giản và ngon",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallSemiBold
                                .copyWith(height: 1.30)))
                  ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child: CustomImageView(imagePath: ImageConstant.img)))
        ]));
  }

  /// Section Widget
  Widget _buildTime11(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineOrange700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("03:13", style: CustomTextStyles.bodySmallBluegray300),
                SizedBox(height: 2.v),
                Text("Tổng kết và tư vấn cho đầu bếp mới",
                    style: CustomTextStyles.titleSmallSemiBold)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 39.h, top: 5.v, bottom: 5.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillPrimaryContainer,
                  child: CustomImageView(imagePath: ImageConstant.img)))
        ]));
  }

  /// Section Widget
  Widget _buildChiTiTKhoHC(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 17.v),
        decoration: AppDecoration.outlineIndigo100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Chi tiết khoá học",
                  style: CustomTextStyles.titleMediumBold_2),
              SizedBox(height: 5.v),
              SizedBox(
                  width: 303.h,
                  child: Text(
                      "Với mục tiêu giúp bạn trở thành một đầu bếp tự tin, khóa học này sẽ dẫn dắt bạn qua từng bước cơ bản của nấu ăn, từ chuẩn bị nguyên liệu, cắt tỉa chuyên nghiệp, chế biến các món ăn chính, đến việc trình bày và trang trí món ăn.\nĐược dẫn dắt bởi Đầu bếp Quang Huy, một đầu bếp tài ba và có kinh nghiệm lâu năm trong ngành ẩm thực, khóa học này sẽ mang đến cho bạn những kiến thức cần thiết và kỹ năng cơ bản để khởi đầu sự nghiệp nấu ăn của mình. Với phong cách dạy dễ hiểu, chân thành và truyền cảm hứng, Đầu bếp Quang Huy sẽ chia sẻ những bí quyết và kinh nghiệm thực tế để bạn có thể nấu ăn một cách tự tin và thành công.\nTừ việc lựa chọn công cụ đến việc chế biến các món ăn truyền thống và sáng tạo, bạn sẽ tiến bộ qua 12 bài giảng chất lượng, tổng cộng 1 giờ 12 phút. Bằng cách hoàn thành khóa học này, bạn sẽ có kiến thức và kỹ năng cần thiết để tự tin trổ tài nấu ăn trong gia đình hoặc chuẩn bị các món ăn ngon cho bạn bè và người thân.",
                      maxLines: 13,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.45))),
              SizedBox(height: 5.v)
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
