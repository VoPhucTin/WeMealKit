import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Onboarding-One",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.onboardingOneScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Onboarding-Two",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.onboardingTwoScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Onboarding-Three",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.onboardingThreeScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login / Create Account Options",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.loginCreateAccountOptionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Email Address",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationEmailAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Verify with OTP",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationVerifyWithOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Input Measurements ",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationInputMeasurementsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Account Creation - Select Health Facts - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .accountCreationSelectHealthFactsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Select Interests",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationSelectInterestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Select Equipment",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationSelectEquipmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Select Pantry",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountCreationSelectPantryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Loading",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreationLoadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Creation - Output",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreationOutputScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dish Details - Steps - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.dishDetailsStepsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cooking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cooking - Completed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cookingCompletedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Orders",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myOrdersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Dishes",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myDishesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Favorites",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myFavoritesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Information",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileInformationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Promo Codes",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.promoCodesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order Information",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderInformationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications - Content",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsContentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Buttons",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeButtonsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pantry-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pantryOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pantry-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pantryTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Browse-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.browseOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Browse-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.browseTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shopping-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart-Add",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartAddScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discover - Courses - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.discoverCoursesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Course Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.courseDetailScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
