// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:wemealkit/presentation/login_create_account_options_screen/login_create_account_options_screen.dart';
import 'package:wemealkit/presentation/login_screen/login_screen.dart';
import 'package:wemealkit/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:wemealkit/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:wemealkit/presentation/account_creation_email_address_screen/account_creation_email_address_screen.dart';
import 'package:wemealkit/presentation/account_creation_verify_with_otp_screen/account_creation_verify_with_otp_screen.dart';
import 'package:wemealkit/presentation/account_creation_input_measurements_screen/account_creation_input_measurements_screen.dart';
import 'package:wemealkit/presentation/account_creation_select_health_facts_tab_container_screen/account_creation_select_health_facts_tab_container_screen.dart';
import 'package:wemealkit/presentation/account_creation_select_interests_screen/account_creation_select_interests_screen.dart';
import 'package:wemealkit/presentation/account_creation_select_equipment_screen/account_creation_select_equipment_screen.dart';
import 'package:wemealkit/presentation/account_creation_select_pantry_screen/account_creation_select_pantry_screen.dart';
import 'package:wemealkit/presentation/account_creation_loading_screen/account_creation_loading_screen.dart';
import 'package:wemealkit/presentation/account_creation_output_screen/account_creation_output_screen.dart';
import 'package:wemealkit/presentation/dish_details_steps_tab_container_screen/dish_details_steps_tab_container_screen.dart';
import 'package:wemealkit/presentation/cooking_screen/cooking_screen.dart';
import 'package:wemealkit/presentation/cooking_completed_screen/cooking_completed_screen.dart';
import 'package:wemealkit/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:wemealkit/presentation/my_dishes_screen/my_dishes_screen.dart';
import 'package:wemealkit/presentation/my_favorites_screen/my_favorites_screen.dart';
import 'package:wemealkit/presentation/notifications_screen/notifications_screen.dart';
import 'package:wemealkit/presentation/onboarding_srceen/onboading_srceen.dart';
import 'package:wemealkit/presentation/profile_information_screen/profile_information_screen.dart';
import 'package:wemealkit/presentation/promo_codes_screen/promo_codes_screen.dart';
import 'package:wemealkit/presentation/order_information_screen/order_information_screen.dart';
import 'package:wemealkit/presentation/notifications_content_screen/notifications_content_screen.dart';
import 'package:wemealkit/presentation/home_container_screen/home_container_screen.dart';
import 'package:wemealkit/presentation/home_buttons_screen/home_buttons_screen.dart';
import 'package:wemealkit/presentation/payment_settings_screen/payment_settings_screen.dart';
import 'package:wemealkit/presentation/pantry_one_screen/pantry_one_screen.dart';
import 'package:wemealkit/presentation/pantry_two_screen/pantry_two_screen.dart';
import 'package:wemealkit/presentation/browse_one_screen/browse_one_screen.dart';
import 'package:wemealkit/presentation/browse_two_screen/browse_two_screen.dart';
import 'package:wemealkit/presentation/cart_screen/cart_screen.dart';
import 'package:wemealkit/presentation/shopping_one_screen/shopping_one_screen.dart';
import 'package:wemealkit/presentation/shopping_two_screen/shopping_two_screen.dart';
import 'package:wemealkit/presentation/shopping_three_screen/shopping_three_screen.dart';
import 'package:wemealkit/presentation/shopping_four_screen/shopping_four_screen.dart';
import 'package:wemealkit/presentation/shopping_five_screen/shopping_five_screen.dart';
import 'package:wemealkit/presentation/cart_add_screen/cart_add_screen.dart';
import 'package:wemealkit/presentation/discover_courses_tab_container_screen/discover_courses_tab_container_screen.dart';
import 'package:wemealkit/presentation/course_detail_screen/course_detail_screen.dart';
import 'package:wemealkit/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onBoardingScreen = '/on_boarding_screen';

  static const String loginCreateAccountOptionsScreen =
      '/login_create_account_options_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String accountCreationEmailAddressScreen =
      '/account_creation_email_address_screen';

  static const String accountCreationVerifyWithOtpScreen =
      '/account_creation_verify_with_otp_screen';

  static const String accountCreationInputMeasurementsScreen =
      '/account_creation_input_measurements_screen';

  static const String accountCreationSelectHealthFactsPage =
      '/account_creation_select_health_facts_page';

  static const String accountCreationSelectHealthFactsTabContainerScreen =
      '/account_creation_select_health_facts_tab_container_screen';

  static const String accountCreationSelectInterestsScreen =
      '/account_creation_select_interests_screen';

  static const String accountCreationSelectEquipmentScreen =
      '/account_creation_select_equipment_screen';

  static const String accountCreationSelectPantryScreen =
      '/account_creation_select_pantry_screen';

  static const String accountCreationLoadingScreen =
      '/account_creation_loading_screen';

  static const String accountCreationOutputScreen =
      '/account_creation_output_screen';

  static const String dishDetailsIngredientsPage =
      '/dish_details_ingredients_page';

  static const String dishDetailsStepsPage = '/dish_details_steps_page';

  static const String dishDetailsStepsTabContainerScreen =
      '/dish_details_steps_tab_container_screen';

  static const String cookingScreen = '/cooking_screen';

  static const String cookingCompletedScreen = '/cooking_completed_screen';

  static const String accountContainerPage = '/account_container_page';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String myDishesScreen = '/my_dishes_screen';

  static const String myFavoritesScreen = '/my_favorites_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String profileInformationScreen = '/profile_information_screen';

  static const String promoCodesScreen = '/promo_codes_screen';

  static const String orderInformationScreen = '/order_information_screen';

  static const String notificationsContentScreen =
      '/notifications_content_screen';

  static const String homePage = '/home_page';

  static const String HomePage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeButtonsScreen = '/home_buttons_screen';

  static const String paymentSettingsScreen = '/payment_settings_screen';

  static const String pantryOneScreen = '/pantry_one_screen';

  static const String pantryTwoScreen = '/pantry_two_screen';

  static const String browseOneScreen = '/browse_one_screen';

  static const String browseTwoScreen = '/browse_two_screen';

  static const String cartScreen = '/cart_screen';

  static const String shoppingOneScreen = '/shopping_one_screen';

  static const String shoppingTwoScreen = '/shopping_two_screen';

  static const String shoppingThreeScreen = '/shopping_three_screen';

  static const String shoppingFourScreen = '/shopping_four_screen';

  static const String shoppingFiveScreen = '/shopping_five_screen';

  static const String cartAddScreen = '/cart_add_screen';

  static const String discoverOnePage = '/discover_one_page';

  static const String discoverTwoPage = '/discover_two_page';

  static const String discoverThreePage = '/discover_three_page';

  static const String discoverCoursesPage = '/discover_courses_page';

  static const String discoverCoursesTabContainerScreen =
      '/discover_courses_tab_container_screen';

  static const String courseDetailScreen = '/course_detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onBoardingScreen: (context) => OnBoardingScreen(),
    loginCreateAccountOptionsScreen: (context) =>
        LoginCreateAccountOptionsScreen(),
    loginScreen: (context) => LoginScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    accountCreationEmailAddressScreen: (context) =>
        AccountCreationEmailAddressScreen(),
    accountCreationVerifyWithOtpScreen: (context) =>
        AccountCreationVerifyWithOtpScreen(),
    accountCreationInputMeasurementsScreen: (context) =>
        AccountCreationInputMeasurementsScreen(),
    accountCreationSelectHealthFactsTabContainerScreen: (context) =>
        AccountCreationSelectHealthFactsTabContainerScreen(),
    accountCreationSelectInterestsScreen: (context) =>
        AccountCreationSelectInterestsScreen(),
    accountCreationSelectEquipmentScreen: (context) =>
        AccountCreationSelectEquipmentScreen(),
    accountCreationSelectPantryScreen: (context) =>
        AccountCreationSelectPantryScreen(),
    accountCreationLoadingScreen: (context) => AccountCreationLoadingScreen(),
    accountCreationOutputScreen: (context) => AccountCreationOutputScreen(),
    dishDetailsStepsTabContainerScreen: (context) =>
        DishDetailsStepsTabContainerScreen(),
    cookingScreen: (context) => CookingScreen(),
    cookingCompletedScreen: (context) => CookingCompletedScreen(),
    myOrdersScreen: (context) => MyOrdersScreen(),
    myDishesScreen: (context) => MyDishesScreen(),
    myFavoritesScreen: (context) => MyFavoritesScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    profileInformationScreen: (context) => ProfileInformationScreen(),
    promoCodesScreen: (context) => PromoCodesScreen(),
    orderInformationScreen: (context) => OrderInformationScreen(),
    notificationsContentScreen: (context) => NotificationsContentScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    homeButtonsScreen: (context) => HomeButtonsScreen(),
    paymentSettingsScreen: (context) => PaymentSettingsScreen(),
    pantryOneScreen: (context) => PantryOneScreen(),
    pantryTwoScreen: (context) => PantryTwoScreen(),
    browseOneScreen: (context) => BrowseOneScreen(),
    browseTwoScreen: (context) => BrowseTwoScreen(),
    cartScreen: (context) => CartScreen(),
    shoppingOneScreen: (context) => ShoppingOneScreen(),
    shoppingTwoScreen: (context) => ShoppingTwoScreen(),
    shoppingThreeScreen: (context) => ShoppingThreeScreen(),
    shoppingFourScreen: (context) => ShoppingFourScreen(),
    shoppingFiveScreen: (context) => ShoppingFiveScreen(),
    cartAddScreen: (context) => CartAddScreen(),
    discoverCoursesTabContainerScreen: (context) =>
        DiscoverCoursesTabContainerScreen(),
    courseDetailScreen: (context) => CourseDetailScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
