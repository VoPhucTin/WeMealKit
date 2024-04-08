import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_container_page/account_container_page.dart';
import 'package:wemealkit/presentation/cart_screen/cart_screen.dart';
import 'package:wemealkit/presentation/discover_two_page/discover_two_page.dart';
import 'package:wemealkit/presentation/home_page/home_page.dart';
import 'package:wemealkit/presentation/login_create_account_options_screen/login_create_account_options_screen.dart';
import 'package:wemealkit/presentation/notifications_screen/notifications_screen.dart';
import 'package:wemealkit/presentation/payment_settings_screen/payment_settings_screen.dart';
import 'package:wemealkit/presentation/shopping_two_screen/shopping_two_screen.dart';
import 'package:wemealkit/widgets/custom_bottom_app_bar.dart';
import 'package:wemealkit/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends ConsumerWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  void logout(BuildContext context) {
    // Perform any necessary logout operations here (e.g., clearing user data, resetting state, etc.)
    // Then navigate back to the login screen
    Navigator.pushReplacementNamed(
        context, AppRoutes.loginCreateAccountOptionsScreen);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.HomePage,
                onUnknownRoute: (settings) {
                  Navigator.pushReplacement(
                    navigatorKey.currentContext!,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginCreateAccountOptionsScreen()),
                  );
                  return null;
                },
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userorange70024x24:
        return AppRoutes.HomePage;
      case BottomBarEnum.Reply:
        return AppRoutes.discoverTwoPage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartScreen;
      case BottomBarEnum.Lockbluegray300:
        return AppRoutes.accountContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.HomePage:
        return HomePage();
      case AppRoutes.discoverTwoPage:
        return DiscoverTwoPage();
      case AppRoutes.accountContainerPage:
        return AccountContainerPage();
      case AppRoutes.cartScreen:
        return CartScreen();
      case AppRoutes.notificationsScreen:
        return NotificationsScreen();
      case AppRoutes.loginCreateAccountOptionsScreen:
        return LoginCreateAccountOptionsScreen();
      case AppRoutes.shoppingTwoScreen:
        return ShoppingTwoScreen();
      case AppRoutes.paymentSettingsScreen:
        return PaymentSettingsScreen();
      default:
        return DefaultWidget();
    }
  }
}
