import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 301.h,
                  margin: EdgeInsets.only(right: 25.h),
                  child: Text(
                    "Mật khẩu mới của bạn phải khác với các mật khẩu trước",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeBluegray70001.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              _buildInputColumn(context),
              SizedBox(height: 12.v),
              _buildRow(context),
              SizedBox(height: 17.v),
              _buildPasswordColumn(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "Tạo mật khẩu mới",
              ),
              SizedBox(height: 5.v),
            ],
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
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Tạo mật khẩu mới",
      ),
    );
  }

  /// Section Widget
  Widget _buildInputColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mật khẩu mới",
          style: CustomTextStyles.titleMediumPrimary_1,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: inputController,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 15.v, 30.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEyeBlueGray300,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "Mật khẩu phải có ít nhất 8 ký tự",
            style: CustomTextStyles.bodyMediumBluegray300,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIcon,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nhập lại mật khẩu mới",
          style: CustomTextStyles.titleMediumPrimary_1,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: inputController1,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 15.v, 30.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEyeBlueGray300,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: true,
        ),
      ],
    );
  }
}
