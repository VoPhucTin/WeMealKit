import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class NotificationsContentScreen extends StatelessWidget {
  NotificationsContentScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle65,
                height: 171.v,
                width: 327.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              SizedBox(height: 22.v),
              SizedBox(
                width: 323.h,
                child: Text(
                  "🗣️ ICC tặng bạn gói khuyến mãi tháng 6 khổng lồ giảm đến 150k!!!\n📢 Một số thông tin cần lưu ý nè:\n🎁 Gói gồm coupon giảm 50k x 4 lần sử dụng, riêng lần sử dụng đầu sẽ giảm 15% tối thiểu 50k tối đa 150k.🎁 Coupon áp dụng cho tất cả cửa hàng cho đơn từ 0 đồng.🎁 Coupon chỉ áp dụng trong tháng 6.🎁 Tận hưởng vô vàn ưu đãi hấp dẫn khác chỉ dành riêng cho người dùng thân thiết.",
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.45,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "Sử dụng ngay",
                buttonStyle: CustomButtonStyles.fillOrange,
              ),
              SizedBox(height: 59.v),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
        // floatingActionButton: CustomFloatingButton(
        //   height: 56,
        //   width: 56,
        //   backgroundColor: appTheme.orange700,
        //   child: CustomImageView(
        //     imagePath: ImageConstant.imgThumbsUpOnerrorcontainer,
        //     height: 28.0.v,
        //     width: 28.0.h,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  // /// Section Widget
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
        onTap: (){
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Thông báo",
      ),
    );
  }

  // /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomAppBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  // ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Userorange70024x24:
  //       return AppRoutes.HomePage;
  //     case BottomBarEnum.Reply:
  //       return AppRoutes.discoverThreePage;
  //     case BottomBarEnum.Cart:
  //       return "/";
  //     case BottomBarEnum.Lockbluegray300:
  //       return AppRoutes.accountContainerPage;
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.HomePage:
  //       return HomePage();
  //     case AppRoutes.discoverThreePage:
  //       return DiscoverThreePage();
  //     case AppRoutes.accountContainerPage:
  //       return AccountContainerPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
