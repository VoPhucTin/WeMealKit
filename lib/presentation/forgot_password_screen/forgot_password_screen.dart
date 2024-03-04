import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 12.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 325.h,
                  child: Text(
                    "Xác nhận email cá nhân của bạn. Chúng tôi sẽ gửi mã xác nhận đến địa chỉ email bạn cung cấp.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeBluegray70001.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildEmailAddress(context),
                Spacer(
                  flex: 33,
                ),
                CustomElevatedButton(
                  text: "Gửi yêu cầu xác nhận",
                ),
                Spacer(
                  flex: 66,
                ),
              ],
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
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Quên mật khẩu",
      ),
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
          hintText: "Nhập email tại đây...",
          textInputAction: TextInputAction.done,
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
}
