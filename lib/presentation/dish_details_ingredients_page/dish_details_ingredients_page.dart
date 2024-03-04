import '../dish_details_ingredients_page/widgets/recipecard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class DishDetailsIngredientsPage extends StatefulWidget {
  const DishDetailsIngredientsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DishDetailsIngredientsPageState createState() =>
      DishDetailsIngredientsPageState();
}

class DishDetailsIngredientsPageState extends State<DishDetailsIngredientsPage>
    with AutomaticKeepAliveClientMixin<DishDetailsIngredientsPage> {
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
                      children: [
                        _buildNguyNLiUSection(context),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(right: 23.h),
                          child: _buildFrameSection(
                            context,
                            dynamicText1: "Tương ớt Tứ Xuyên",
                            dynamicText2: "2 muỗng canh",
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildIngredients1Section(context),
                        SizedBox(height: 26.v),
                        _buildContentSection(context),
                        SizedBox(height: 27.v),
                        _buildNhNgMNNgonKhCSection(context),
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
  Widget _buildNguyNLiUSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: _buildTitleSection(
            context,
            dynamicText1: "Nguyên liệu",
            dynamicText2: "Đặt mua tất cả",
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          "18 nguyên liệu - bạn chỉ thiếu 2 món!",
          style: CustomTextStyles.bodyLargeBluegray500,
        ),
        SizedBox(height: 16.v),
        SizedBox(
          height: 50.v,
          width: 327.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.outlineBlueGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 26.v),
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgCheckmarkPrimarycontainer24x24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Đậu hũ",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "6 lạng, cắt thành khối vuông",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 1.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nấm mộc nhĩ khô",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "4 miếng",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 1.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tảo bẹ Kombu",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "1 miếng",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
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
                    Text(
                      "Nấm mỡ",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "170g, cắt làm tư, bỏ cuống",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Dầu thực vật",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgInbox,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
              Text(
                "1/3 chén",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
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
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bột bắp",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "1 muỗng cà phê",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
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
                    Text(
                      "Nước tương đen",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "1 muỗng canh",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          decoration: AppDecoration.outlineBlueGray,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hạt tiêu Tứ Xuyên",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      width: 233.h,
                      child: Text(
                        "1 muỗng canh nguyên hạt, 1 muỗng canh giã nhuyễn",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 70.h,
                  bottom: 46.v,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgInbox,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: _buildFrameSection(
            context,
            dynamicText1: "Ớt khô Trung Quốc",
            dynamicText2: "2 quả",
          ),
        ),
        SizedBox(height: 4.v),
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
                    Text(
                      "Tỏi",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "1 quả, bầm nhuyễn",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
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
                    Text(
                      "Hành lá",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "4 nhánh, thái nhỏ",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.v),
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
                    Text(
                      "Tương lên men",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "2 muỗng canh",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 26.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIngredients1Section(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 23.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Giá trị dinh dưỡng",
              style: CustomTextStyles.titleMediumPrimaryBold,
            ),
            SizedBox(height: 7.v),
            Text(
              "Mỗi phần ăn (4 phần tổng cộng)",
              style: CustomTextStyles.bodyLargeBluegray500,
            ),
            SizedBox(height: 11.v),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: appTheme.gray700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 221.v,
                width: 297.h,
                padding: EdgeInsets.all(10.h),
                decoration: AppDecoration.fillGray700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.48,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 201.v,
                        width: 277.h,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Tính năng Premium!",
                              style:
                                  CustomTextStyles.titleSmallOnErrorContainer,
                            ),
                            SizedBox(height: 4.v),
                            Container(
                              width: 206.h,
                              margin: EdgeInsets.symmetric(horizontal: 7.h),
                              child: Text(
                                "Hãy nâng cấp để tìm hiểu giá trị dinh dưỡng của bữa ăn nhé.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .bodySmallOnErrorContainer
                                    .copyWith(
                                  height: 1.30,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.v),
                            CustomElevatedButton(
                              height: 30.v,
                              text: "Nâng cấp",
                              buttonStyle: CustomButtonStyles.fillOrangeTL8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContentSection(BuildContext context) {
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
              CustomImageView(
                imagePath: ImageConstant.imgIconly,
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
  Widget _buildNhNgMNNgonKhCSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: _buildTitleSection(
            context,
            dynamicText1: "Những món ngon khác",
            dynamicText2: "Xem tất cả",
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
              return RecipecardItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameSection(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
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
                Text(
                  dynamicText1,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.gray900,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  dynamicText2,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: appTheme.gray900,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPrimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 26.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTitleSection(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText1,
          style: CustomTextStyles.titleMediumBold18.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          dynamicText2,
          style: CustomTextStyles.titleMediumOrange700.copyWith(
            color: appTheme.orange700,
          ),
        ),
      ],
    );
  }
}
