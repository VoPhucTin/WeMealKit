import '../account_creation_output_screen/widgets/recipecardlist_item_widget.dart';
import '../account_creation_output_screen/widgets/userprofilelist1_item_widget.dart';
import '../account_creation_output_screen/widgets/userprofilelist2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class AccountCreationOutputScreen extends StatelessWidget {
  const AccountCreationOutputScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 5.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Container(
                    width: 316.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 34.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Dựa vào thông tin bạn cung cấp, bạn có thể nấu ",
                            style: theme.textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text:
                                "234 món ăn khác nhau. Hãy tham khảo thực đơn tuần này của bạn nhé!",
                            style: CustomTextStyles.titleMediumBold_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    decoration: AppDecoration.gradientBlackToBlack,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thứ Năm, 30/5",
                                style: CustomTextStyles.titleMediumBold_2,
                              ),
                              SizedBox(height: 15.v),
                              _buildUserProfileList(context),
                              SizedBox(height: 18.v),
                              Text(
                                "Thứ Sáu, 31/5",
                                style: CustomTextStyles.titleMediumBold_2,
                              ),
                              SizedBox(height: 15.v),
                              _buildUserProfileList1(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text(
                              "Thứ Bảy, 1/6",
                              style: CustomTextStyles.titleMediumBold_2,
                            ),
                          ),
                        ),
                        SizedBox(height: 31.v),
                        _buildRecipeCardList(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                    text: "Quá đã!",
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                  ),
                ],
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
      title: AppbarTitle(
        text: "Thực đơn của bạn đây!",
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 189.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofilelist1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList1(BuildContext context) {
    return SizedBox(
      height: 189.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofilelist2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipeCardList(BuildContext context) {
    return SizedBox(
      height: 189.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return RecipecardlistItemWidget();
        },
      ),
    );
  }
}
