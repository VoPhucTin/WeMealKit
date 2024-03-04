import '../discover_two_page/widgets/discovertwo_item_widget.dart';
import '../discover_two_page/widgets/row02_item_widget.dart';
import '../discover_two_page/widgets/row1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DiscoverTwoPage extends StatefulWidget {
  const DiscoverTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverTwoPageState createState() => DiscoverTwoPageState();
}

class DiscoverTwoPageState extends State<DiscoverTwoPage>
    with AutomaticKeepAliveClientMixin<DiscoverTwoPage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Column(
                  children: [
                    _buildImageSection(context),
                    _buildFeaturedSection(context),
                    _buildFeaturedSection2(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSection(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 168.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 74.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "ICC x ĐẦU BẾP QUANG HUY",
                    style: CustomTextStyles.labelMediumBold,
                  ),
                  Text(
                    "LĂN VÀO BẾP",
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Khoá học nấu ăn cho người mới bắt đầu",
                    style: CustomTextStyles.labelLargeOnErrorContainerMedium,
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    width: 115.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "Khám phá ngay",
                      style: CustomTextStyles.labelLargeOnErrorContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedSection(BuildContext context) {
    return SizedBox(
      height: 1107.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 1107.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 1083.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 16.v,
                      ),
                      decoration: AppDecoration.fillOnErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nhật ký làm bếp",
                            style: CustomTextStyles.titleMediumBold18,
                          ),
                          SizedBox(height: 53.v),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 7.h),
                                      child: _buildContentSection2(
                                        context,
                                        backgroundImage: ImageConstant.imgBg6,
                                        titleText:
                                            "Trổ tài khéo léo với bánh flan cốt dừa thơm ngon, béo ngậy",
                                        bodyText:
                                            "Cùng vào bếp với ICC để khám phá công thức ngay nhé!",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: _buildContentSection1(
                                        context,
                                        bgImage: ImageConstant.imgBg7,
                                        titleText:
                                            "7 mối nguy gây hại cho bồn rửa chén mà ít ai ngờ tới",
                                        bodyText:
                                            "Đổ trực tiếp thức ăn hoặc chất lỏng thừa xuống bồn rửa có...",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.h),
                                      child: _buildContentSection1(
                                        context,
                                        bgImage: ImageConstant.imgBg8,
                                        titleText:
                                            "Nấm bạch tuyết làm gì ngon? Gợi ý 5 món ngon từ nấm bạch tuyết",
                                        bodyText:
                                            "Nấm bạch tuyết không chỉ có hương vị ngon mà còn được đánh...",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 8.h,
                                        bottom: 35.v,
                                      ),
                                      child: _buildContentSection2(
                                        context,
                                        backgroundImage: ImageConstant.imgBg9,
                                        titleText:
                                            "Cách luộc rau bằng lò vi sóng cực nhanh gọn",
                                        bodyText:
                                            "Rau luộc là món ăn đơn giản, thường được chế biến bằng cách luộc...",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 8.h,
                                        bottom: 18.v,
                                      ),
                                      child: _buildContentSection2(
                                        context,
                                        backgroundImage: ImageConstant.imgBg10,
                                        titleText:
                                            "Bánh quẩy bao nhiêu calo? Ăn bánh quẩy có béo không?",
                                        bodyText:
                                            "Bạn đang quan tâm đến cân nặng và thắc mắc rằng 1 cái bánh....",
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: _buildContentSection2(
                                        context,
                                        backgroundImage: ImageConstant.imgBg11,
                                        titleText:
                                            "Chế độ ăn kiêng I-ốt ở người mắc bệnh tuyến giáp thực hiện như thế nào?",
                                        bodyText:
                                            "Làm sao để không bị thiếu dinh dưỡng khi ăn theo chế độ kiêng...",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.v),
                              CustomElevatedButton(
                                height: 30.v,
                                text: "Xem tất cả bài viết",
                                buttonStyle: CustomButtonStyles.fillOrangeTL8,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallOnErrorContainer,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 1083.v,
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                          left: 24.h,
                          top: 52.v,
                          bottom: 1007.v,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: 8.h,
                          );
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return DiscovertwoItemWidget();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKitchenToolsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kỹ thuật nấu ăn",
            style: CustomTextStyles.titleMediumBold_2,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 89.v,
                crossAxisCount: 4,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Row1ItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMealOptionsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mẹo làm bếp",
            style: CustomTextStyles.titleMediumBold_2,
          ),
          SizedBox(height: 5.v),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 52.v,
              crossAxisCount: 2,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Row02ItemWidget();
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedSection2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "Cẩm nang nấu nướng",
                style: CustomTextStyles.titleMediumBold18,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Tìm kiếm mẹo nấu ăn",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 54.v,
                  width: 164.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 6.v,
                            right: 3.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Text(
                            "Giới thiệu",
                            style: CustomTextStyles.labelMediumGray900,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsOrange70054x49,
                        height: 54.v,
                        width: 49.h,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 52.v,
                  width: 164.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5.v,
                            right: 3.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Text(
                            "Thiết bị nhà bếp",
                            style: CustomTextStyles.labelMediumGray900,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsOrange70054x49,
                        height: 52.v,
                        width: 45.h,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          _buildKitchenToolsSection(context),
          SizedBox(height: 21.v),
          _buildMealOptionsSection(context),
          SizedBox(height: 5.v),
          CustomElevatedButton(
            height: 30.v,
            text: "Xem tất cả bài viết",
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            buttonStyle: CustomButtonStyles.fillOrangeTL8,
            buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContentSection1(
    BuildContext context, {
    required String bgImage,
    required String titleText,
    required String bodyText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: bgImage,
          height: 155.adaptSize,
          width: 155.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 11.v),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 151.h,
              child: Text(
                titleText,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.gray900,
                  height: 1.30,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 149.h,
              child: Text(
                bodyText,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray900,
                  height: 1.45,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildContentSection2(
    BuildContext context, {
    required String backgroundImage,
    required String titleText,
    required String bodyText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: backgroundImage,
          height: 155.adaptSize,
          width: 155.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 11.v),
        SizedBox(
          width: 155.h,
          child: Text(
            titleText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray900,
              height: 1.30,
            ),
          ),
        ),
        SizedBox(height: 4.v),
        SizedBox(
          width: 153.h,
          child: Text(
            bodyText,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray900,
              height: 1.45,
            ),
          ),
        ),
      ],
    );
  }
}
