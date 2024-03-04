import '../dish_details_steps_page/widgets/recipecard1_item_widget.dart';
import '../dish_details_steps_page/widgets/userprofilelist3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class DishDetailsStepsPage extends StatefulWidget {
  const DishDetailsStepsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DishDetailsStepsPageState createState() => DishDetailsStepsPageState();
}

class DishDetailsStepsPageState extends State<DishDetailsStepsPage>
    with AutomaticKeepAliveClientMixin<DishDetailsStepsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitleRow(context),
                        SizedBox(height: 17.v),
                        _buildUserProfileList(context),
                        SizedBox(height: 8.v),
                        _buildFrameRow(context),
                        SizedBox(height: 26.v),
                        _buildContentColumn(context),
                        SizedBox(height: 27.v),
                        _buildRecipeCardColumn(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chế biến",
                  style: CustomTextStyles.titleMediumBold18,
                ),
                SizedBox(height: 7.v),
                Text(
                  "6 bước",
                  style: CustomTextStyles.bodyLargeBluegray500,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 30.v,
            width: 84.h,
            text: "Bắt đầu",
            margin: EdgeInsets.only(bottom: 23.v),
            buttonStyle: CustomButtonStyles.fillOrangeTL8,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 5.v,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return Userprofilelist3ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23.h),
      padding: EdgeInsets.only(
        top: 22.v,
        bottom: 21.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Nắm rõ rồi chứ? Cùng nấu nhé!",
              style: CustomTextStyles.titleMediumPrimaryBold,
            ),
          ),
          CustomElevatedButton(
            height: 30.v,
            width: 84.h,
            text: "Bắt đầu",
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 14.v,
            ),
            buttonStyle: CustomButtonStyles.fillOrangeTL8,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContentColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Đánh giá",
                    style: CustomTextStyles.titleMediumBold18,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "- 23 lượt đánh giá",
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 82.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Xem tất cả",
                      style: CustomTextStyles.labelLargeOrange700Medium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "4.5",
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 23.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 141.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hương",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "21/5/2023",
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconlyLightMore,
                            height: 10.v,
                            width: 8.h,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 5.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "ngon, hợp khẩu vị",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.v),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconlyPrimarycontainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 9.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Gia Bảo",
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "12/4/2023",
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconlyLightMore,
                          height: 10.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 6.v,
                            bottom: 3.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Nhìn nhiều vậy thôi chứ dễ nấu!",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconlyPrimarycontainer24x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 30.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 125.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hưng",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "5/4/2023",
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconlyLightMore,
                            height: 10.v,
                            width: 8.h,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 5.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Bị mặn :(",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconlyRedA700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 30.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecipeCardColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Những món ngon khác",
                style: CustomTextStyles.titleMediumBold18,
              ),
              Text(
                "Xem tất cả",
                style: CustomTextStyles.titleMediumOrange700,
              ),
            ],
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
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
              return Recipecard1ItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
