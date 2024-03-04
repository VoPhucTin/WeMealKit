import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

class ProfileInformationScreen extends StatelessWidget {
  ProfileInformationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController trnHongLmvalueController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage11112x112,
                    height: 112.adaptSize,
                    width: 112.adaptSize,
                    radius: BorderRadius.circular(
                      56.h,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildFrameFortyFive(context),
                  SizedBox(height: 17.v),
                  _buildFirstName(context),
                  SizedBox(height: 17.v),
                  _buildEmailAddress(context),
                  SizedBox(height: 17.v),
                  _buildPassword(context),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Giới tính",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildFrame4(context),
                  SizedBox(height: 17.v),
                  _buildNMSinh(context),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                    text: "Cập nhật hồ sơ",
                    buttonStyle: CustomButtonStyles.fillOrange,
                  ),
                  SizedBox(height: 14.v),
                  _buildFrame1(context),
                  SizedBox(height: 131.v),
                  _buildFrame2(
                    context,
                    text64: "170",
                    text65: "171",
                    text66: "172",
                    text67: "173",
                    text68: "174",
                    text69: "175",
                    text70: "176",
                  ),
                  SizedBox(height: 163.v),
                  _buildFrame(
                    context,
                    userImage: "Cân nặng",
                    zipcode: "67kg",
                  ),
                  SizedBox(height: 201.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame715,
                    height: 1.v,
                    width: 327.h,
                  ),
                  SizedBox(height: 245.v),
                  _buildFrame2(
                    context,
                    text64: "64",
                    text65: "65",
                    text66: "66",
                    text67: "67",
                    text68: "68",
                    text69: "69",
                    text70: "70",
                  ),
                  SizedBox(height: 285.v),
                  _buildButtonContinue(context),
                  SizedBox(height: 73.v),
                ],
              ),
            ),
          ),
        ),
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
        text: "Hồ sơ cá nhân",
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFortyFive(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Họ và tên",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: trnHongLmvalueController,
          hintText: "Trần Hoàng Lâm",
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsupBlueGray300,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Số điện thoại",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: mobileNoController,
          hintText: "0901325280",
          textInputType: TextInputType.phone,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsupBlueGray300,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailAddress(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "hlamt125@gmail.com",
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Column(
      children: [
        _buildFrame(
          context,
          userImage: "Mật khẩu",
          zipcode: "Cập nhật",
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: languageController,
          hintText: "••••••••••••",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsupGray900,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 6.h),
          child: _buildRow02(
            context,
            n: "Nam",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: _buildRow02(
            context,
            n: "Nữ",
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNMSinh(BuildContext context) {
    return Column(
      children: [
        _buildFrame(
          context,
          userImage: "Năm sinh",
          zipcode: "2001",
        ),
        SizedBox(height: 16.v),
        _buildFrame1(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonContinue(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 105.h),
      decoration: AppDecoration.fillOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Text(
            "Cập nhật hồ sơ",
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumOnErrorContainerBold,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow02(
    BuildContext context, {
    required String n,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserSecondarycontainer,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 13.v,
                bottom: 14.v,
              ),
              child: Text(
                n,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userImage,
    required String zipcode,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userImage,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          zipcode,
          style: CustomTextStyles.titleMediumOrange700Bold.copyWith(
            color: appTheme.orange700,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            color: appTheme.orange700,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
        SizedBox(
          height: 33.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
            indent: 8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22.v),
          child: SizedBox(
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String text64,
    required String text65,
    required String text66,
    required String text67,
    required String text68,
    required String text69,
    required String text70,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text64,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          text65,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          text66,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          text67,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeOrange700.copyWith(
            color: appTheme.orange700,
          ),
        ),
        Text(
          text68,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          text69,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          text70,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }
}
