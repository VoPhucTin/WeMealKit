import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/service/firebase_services.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void login(String username, password) async {
     try{
    String body = jsonEncode(<String, String>{
      'username': username,
      'password': password,
    });

    Response response = await post(
      Uri.parse('http://accountntransaction.eja6csejffamd5db.southeastasia.azurecontainer.io/v1/auths/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );
    
    if(response.statusCode == 200){
      print('login successfully');
      Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
    } else print('fail, status code: ${response.statusCode}');
  }catch(e){
    print(e.toString());
  }
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 13.v,
              ),
              child: Center(
                child: Column(
                  children: [
                    _buildEmailAddress(context),
                    SizedBox(height: 17.v),
                    _buildPassword(context),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "Đăng nhập",
                      onPressed: () {
                        // Navigator.pushNamed(
                        //     context, AppRoutes.homeContainerScreen);
                        login(usernameController.text.toString(),
                            passwordController.text.toString());
                        print('login');
                      },
                    ),
                    SizedBox(height: 25.v),
                    Text(
                      "Bạn quên mật khẩu?",
                      style: CustomTextStyles.titleMediumBluegray300,
                    ),
                    // Spacer(),
                    SizedBox(height: 16.v),
                    Text(
                      "hoặc tiếp tục với",
                      style: CustomTextStyles.bodyLargeBluegray300,
                    ),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                      text: "Đăng nhập với Google",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 7.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineTealTL16,
                      onPressed: () async {
                        var result =
                            await FirebaseServices().signInWithGoogle();
                        if (result != null) {
                          Navigator.pushNamed(
                              context, AppRoutes.homeContainerScreen);
                          print('Login Success !');
                        } else {
                          const snackbar =
                              SnackBar(content: Text('Login Google fail !'));
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      },
                    ),
                    SizedBox(height: 16.v),
                    // CustomElevatedButton(
                    //   text: "Đăng nhập với Facebook",
                    //   leftIcon: Container(
                    //     margin: EdgeInsets.only(right: 7.h),
                    //     child: CustomImageView(
                    //       imagePath: ImageConstant.imgAkariconsfacebookfill,
                    //       height: 20.adaptSize,
                    //       width: 20.adaptSize,
                    //     ),
                    //   ),
                    //   buttonStyle: CustomButtonStyles.fillBlue,
                    //   onPressed: () async {
                    //     var result = await FirebaseServices().signInWithFacebook();
                    //     if (result != null) {
                    //       Navigator.pushNamed(
                    //           context, AppRoutes.homeContainerScreen);
                    //       print('Login FB Success !');
                    //     } else {
                    //       const snackbar = SnackBar(content: Text('Login Facebook fail !'));
                    //       ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    //     }
                    //   },
                    // ),
                    SizedBox(height: 22.v),
                  ],
                ),
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
          top: 13.v,
          bottom: 18.v,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Đăng nhập",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailAddress(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tài khoản",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        CustomTextFormField(
          controller: usernameController,
          hintText: "Nhập tại đây...",
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
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(vertical: 17.v),
        ),
      ],
    );
  }
}
