import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AccountCreationEmailAddressScreen extends StatefulWidget {
  AccountCreationEmailAddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AccountCreationEmailAddressScreen> createState() =>
      _AccountCreationEmailAddressScreenState();
}

class _AccountCreationEmailAddressScreenState
    extends State<AccountCreationEmailAddressScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  void register(
      String username, password, confirmPassword, firstName, lastName) async {
    try {
      String body = jsonEncode(<String, String>{
        'username': username,
        'password': password,
        'confirmPassword': confirmPassword,
        'firstName': firstName,
        'lastName': lastName,
      });

      Response response = await post(
        Uri.parse(
            'http://accountntransaction.eja6csejffamd5db.southeastasia.azurecontainer.io/v1/auths/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );

      if (response.statusCode == 200) {
        print('register successfully');
        Navigator.pushNamed(context, AppRoutes.loginScreen);
      } else
        print('fail, status code: ${response.statusCode}');
    } catch (e) {
      print(e.toString());
    }
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
              vertical: 14.v,
            ),
            child: Column(
              children: [
                _buildAccountCreationFirstName(context),
                SizedBox(height: 17.v),
                _buildAccountCreationLastName(context),
                SizedBox(height: 17.v),
                _buildAccountCreationPhoneNumber(context),
                SizedBox(height: 17.v),
                // _buildAccountCreationEmailAddress(context),
                // SizedBox(height: 17.v),
                _buildAccountCreationPassword(context),
                SizedBox(height: 17.v),
                _buildAccountCreationConfirmPassword(context),
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "Tiếp tục",
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Form is valid, proceed with registration
                      //  Navigator.pushNamed(
                      //     context, AppRoutes.homeContainerScreen);
                      register(
                          usernameController.text.toString(),
                          passwordController.text.toString(),
                          confirmPasswordController.text.toString(),
                          firstNameController.text.toString(),
                          lastNameController.text.toString());
                      print('register');
                    } else {}
                  },
                ),
                SizedBox(height: 23.v),
                Container(
                  width: 286.h,
                  margin: EdgeInsets.only(
                    left: 19.h,
                    right: 20.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Bằng việc đăng ký, bạn đồng ý với\n",
                          style:
                              CustomTextStyles.titleSmallBluegray70001Medium_1,
                        ),
                        TextSpan(
                          text: "Điều khoản dịch vụ",
                          style:
                              CustomTextStyles.titleSmallBluegray70001.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: " & ",
                          style:
                              CustomTextStyles.titleSmallBluegray70001Medium_1,
                        ),
                        TextSpan(
                          text: "Chính sách bảo mật",
                          style:
                              CustomTextStyles.titleSmallBluegray70001.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ".",
                          style: CustomTextStyles.titleSmallBluegray70001,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5.v),
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
      leading: Container(
        height: 26.v,
        width: 24.h,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 15.v,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 2.v),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Tạo tài khoản",
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountCreationFirstName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tên",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: firstNameController,
          hintText: "Nhập họ và tên...",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Họ và tên không được để trống';
            }
            return null;
          },
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

  Widget _buildAccountCreationLastName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Họ",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: lastNameController,
          hintText: "Nhập họ...",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Họ và tên không được để trống';
            }
            return null;
          },
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
  Widget _buildAccountCreationPhoneNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tên tài khoản",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: usernameController,
          hintText: "Nhập tên tài khoản",
          textInputType: TextInputType.phone,
          validator: (value) {
            // if (value == null || value.isEmpty) {
            //   return 'Số điện thoại không được để trống';
            // } else if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
            //     return 'Số điện thoại không hợp lệ';
            // }
            // return null;
          },
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
  // Widget _buildAccountCreationEmailAddress(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Email",
  //         style: theme.textTheme.titleMedium,
  //       ),
  //       SizedBox(height: 12.v),
  //       CustomTextFormField(
  //         controller: emailController,
  //         hintText: "Nhập email tại đây...",
  //         textInputType: TextInputType.emailAddress,
  //         validator: (value) {
  //           if (value == null || value.isEmpty) {
  //             return 'Email không được để trống';
  //           } else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
  //               return 'Email không hợp lệ';
  //           }
  //           // Add more validation if needed (e.g., email format)
  //           return null;
  //         },
  //         prefix: Container(
  //           margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
  //           child: CustomImageView(
  //             imagePath: ImageConstant.imgCheckmark,
  //             height: 20.adaptSize,
  //             width: 20.adaptSize,
  //           ),
  //         ),
  //         prefixConstraints: BoxConstraints(
  //           maxHeight: 54.v,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  /// Section Widget
  Widget _buildAccountCreationPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mật khẩu",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Nhập mật khẩu...",
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mật khẩu không được để trống';
            } else if (!RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$')
                .hasMatch(value)) {
              return 'Mật khẩu phải có ít nhất 6 kí tự, bao gồm ít nhất 1 chữ hoa, 1 số và 1 kí tự đặc biệt';
            }
            return null;
          },
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsup,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          suffix: GestureDetector(
            onTap: _toggle,
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: _obscureText,
          contentPadding: EdgeInsets.symmetric(vertical: 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountCreationConfirmPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nhập lại Mật khẩu",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: confirmPasswordController,
          hintText: "Nhập mật khẩu...",
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mật khẩu không được để trống';
            } else if (!RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$')
                .hasMatch(value)) {
              return 'Mật khẩu phải có ít nhất 6 kí tự, bao gồm ít nhất 1 chữ hoa, 1 số và 1 kí tự đặc biệt';
            }
            return null;
          },
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsup,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          suffix: GestureDetector(
            onTap: _toggle,
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: _obscureText,
          contentPadding: EdgeInsets.symmetric(vertical: 17.v),
        ),
      ],
    );
  }
}
