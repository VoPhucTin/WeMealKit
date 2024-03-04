import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AccountCreationSelectHealthFactsPage extends StatefulWidget {
  const AccountCreationSelectHealthFactsPage({Key? key})
      : super(
          key: key,
        );

  @override
  AccountCreationSelectHealthFactsPageState createState() =>
      AccountCreationSelectHealthFactsPageState();
}

class AccountCreationSelectHealthFactsPageState
    extends State<AccountCreationSelectHealthFactsPage>
    with AutomaticKeepAliveClientMixin<AccountCreationSelectHealthFactsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 307.v),
              _buildContinueButton(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(
            height: 12.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 5,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.primary.withOpacity(0.49),
                activeDotScale: 1.5,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            text: "Tiếp tục ->",
          ),
        ],
      ),
    );
  }
}
