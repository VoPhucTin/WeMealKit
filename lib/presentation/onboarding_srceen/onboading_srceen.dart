import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/login_create_account_options_screen/login_create_account_options_screen.dart';
import 'package:wemealkit/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 150.v),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              //onboarding 1
              Container(
                color: Colors.green,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(
                    height: 60.v,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgObjects,
                    height: 320.v,
                    width: 264.h,
                  ),
                  SizedBox(
                    height: 60.v,
                  ),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "Khám phá thực đơn đáp ứng đầy đủ sức khoẻ!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.30,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  SizedBox(
                    width: 289.h,
                    child: Text(
                      "1500+ bữa ăn tiêu chuẩn giúp bạn đủ chất mà vẫn “khoẻ túi tiền”",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray70018.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                ]),
              ),
              //onboarding 2
              Container(
                  color: Colors.teal,
                  child: Column(children: [
                _buildAppBar(context),
                SizedBox(height: 60.v),
                CustomImageView(
                  imagePath: ImageConstant.imgObjectsOnerrorcontainer,
                  height: 278.v,
                  width: 323.h,
                ),
                SizedBox(
                  height: 100.v,
                ),
                SizedBox(
                  width: 289.h,
                  child: Text(
                    "Bạn Cần gì ?\n Chúng tôi có đủ!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: 210.h,
                  child: Text(
                    "Kết nối với những đối tác siêu thị ngon-bổ-rẻ ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBluegray70018.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ])),
              //onboarding 3
              Container(
                child: Column(children: [
                  // _buildAppBar(context),
                  SizedBox(
                    height: 70.v,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgObjectsSecondarycontainer,
                    height: 350.v,
                    width: 264.h,
                  ),
                  // SizedBox(
                  //   height: 60.v,
                  // ),
                  SizedBox(
                    width: 200.h,
                    child: Text(
                      "Kết nối với nhiều chuyên gia",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.30,
                      ),
                    ),
                  ),
                  // SizedBox(height: 20.v),
                  SizedBox(
                    width: 289.h,
                    child: Text(
                      "Bạn có thắc mắc? Hãy trò chuyện với những đầu bếp thật nhé",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray70018.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? Container(
                color: Colors.white,
                height: 150.v,
                 padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 3.v,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: WormEffect(
                              spacing: 12.h, activeDotColor: Colors.orangeAccent),
                        ),
                      ),
                      SizedBox(
                        height: 30.v,
                      ),
                      CustomElevatedButton(
                        text: "Bắt Đầu Nào",
                        onPressed: () async {
                          final perfs = await SharedPreferences.getInstance();
                          perfs.setBool('showHome', true);
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginCreateAccountOptionsScreen(),
                                  type: PageTransitionType.fade));
                        },
                        buttonStyle: CustomButtonStyles.fillGray,
                      ),
                    ]),
              )
            : Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 3.v,
                ),
                height: 150.v,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: WormEffect(
                              spacing: 12.h, activeDotColor: Colors.orangeAccent),
                        ),
                      ),
                      SizedBox(
                        height: 30.v,
                      ),
                      CustomElevatedButton(
                        text: "Tiếp tục ->",
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut);
                        },
                        buttonStyle: CustomButtonStyles.fillGray,
                      ),
                    ]),
              ),
      ),
    );
  }

  //Section
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 20.v,
      actions: [
        AppbarSubtitleOne(
          onTap: () {
           Navigator.pushNamed(context, AppRoutes.loginCreateAccountOptionsScreen);
          },
          text: "Bỏ qua",
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }
}
