import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_pin_code_text_field.dart';

class AccountCreationVerifyWithOtpScreen extends StatelessWidget {
  const AccountCreationVerifyWithOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 327.h,
                child: Text(
                  "Chúng tôi đã gửi mã xác nhận về điện thoại bạn. Hãy kiểm tra tin nhắn nhé!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray70001.copyWith(
                    height: 1.45,
                  ),
                ),
              ),
              SizedBox(height: 48.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(height: 45.v),
              CustomElevatedButton(
                text: "Confirm",
              ),
              SizedBox(height: 5.v),
              CustomElevatedButton(
                text: "Resend Code",
                buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
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
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Xác nhận OTP",
      ),
    );
  }
}
