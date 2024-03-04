import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:page_transition/page_transition.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/login_screen/login_screen.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class LoginCreateAccountOptionsScreen extends StatelessWidget {
  const LoginCreateAccountOptionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.orange700,
          body: Container(
            width: SizeUtils.width,
            height: SizeUtils.height,
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                _buildUserStack(context),
                SizedBox(height: 89.v),
                Container(
                  width: 295.h,
                  margin: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Text(
                    "Làm bếp thật dễ dàng cùng WeMealKit !",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.headlineMediumOnErrorContainer.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                CustomElevatedButton(
                  text: "Đăng ký",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.accountCreationEmailAddressScreen);
                    print('Sign Up');
                  }
                ),
                SizedBox(height: 18.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Đã có tài khoản?",
                        style: CustomTextStyles.titleMediumOnErrorContainer_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                     WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: LoginScreen(),
                                    type:
                                        PageTransitionType.fade));
                          },
                          child: Text(
                            "Đăng nhập",
                            style: theme.textTheme.titleMedium!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserStack(BuildContext context) {
    return SizedBox(
      height: 311.v,
      width: 313.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 7.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup427,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 23.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 14.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              top: 63.v,
                              bottom: 7.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserGray100,
                            height: 71.v,
                            width: 79.h,
                            margin: EdgeInsets.only(
                              left: 10.h,
                              bottom: 13.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorYellow100,
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 74.v,
                              bottom: 7.v,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgSettingsOnsecondarycontainer,
                            height: 79.v,
                            width: 86.h,
                            margin: EdgeInsets.only(top: 5.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorYellow100,
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 94.h),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 68.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 67.v,
                          width: 54.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserLightGreen400,
                                height: 42.v,
                                width: 47.h,
                                alignment: Alignment.topRight,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgUserLightGreen400,
                                height: 44.v,
                                width: 45.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUserLightGreen300,
                          height: 9.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 34.v,
                            bottom: 23.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 47.adaptSize,
                          width: 47.adaptSize,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            top: 6.v,
                            bottom: 13.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserGreen400,
                          height: 7.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            top: 35.v,
                            bottom: 70.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionOnprimary,
                          height: 90.v,
                          width: 87.h,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            top: 23.v,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorYellow1002x2,
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            top: 59.v,
                            bottom: 51.v,
                          ),
                        ),
                        Container(
                          height: 103.v,
                          width: 129.h,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            bottom: 10.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserGreen4006x9,
                                height: 6.v,
                                width: 9.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 38.h,
                                  bottom: 4.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup,
                                height: 103.v,
                                width: 129.h,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 6.v,
            width: 4.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 139.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsGreen400,
            height: 14.v,
            width: 10.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 43.v),
          ),
        ],
      ),
    );
  }
}
