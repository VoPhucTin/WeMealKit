import '../cooking_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

class CookingScreen extends StatelessWidget {
  CookingScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100.withOpacity(0.4),
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 433.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHermesRiveraO,
                        height: 433.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      _buildAppBar(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 145.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder40,
                        ),
                        child: Container(
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          decoration: AppDecoration.outlineGrayA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder40,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIconlyLightPause,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                    backgroundColor:
                                        appTheme.blueGray100.withOpacity(0.53),
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    strokeWidth: 5.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      SizedBox(
                        height: 39.v,
                        width: 85.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "02:",
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 33.v,
                                width: 38.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "3",
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Opacity(
                                        opacity: 0.1,
                                        child: Text(
                                          "4",
                                          style: CustomTextStyles
                                              .headlineLargeGray900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "8",
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildSlider(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 36.v,
                  ),
                  decoration: AppDecoration.outlineGrayA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 83.v),
                      SizedBox(
                        width: 323.h,
                        child: Text(
                          "Cho toàn bộ hạt tiêu Tứ Xuyên và ớt vào chảo dầu và đun ở lửa lớn. Nấu cho đến khi toả mùi thơm. Chứ ý không nấu quá chín, đề phòng cháy.\nChắt dầu lưới lọc mịn, bỏ hạt tiêu và ớt đi, rồi cho dầu trở lại chảo.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.45,
                          ),
                        ),
                      ),
                      SizedBox(height: 39.v),
                      _buildCooking(context),
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 49.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Đậu hũ Tứ Xuyên",
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 74.v),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 200.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return SliderItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCooking(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bước 2/6",
                style: CustomTextStyles.titleMediumOrange700Bold,
              ),
              Text(
                "Xem tất cả",
                style: CustomTextStyles.titleSmallMedium,
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          height: 8.v,
          width: 327.h,
          decoration: BoxDecoration(
            color: appTheme.orange700,
            borderRadius: BorderRadius.circular(
              4.h,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              4.h,
            ),
            child: LinearProgressIndicator(
              value: 0.33,
              backgroundColor: appTheme.orange700,
              valueColor: AlwaysStoppedAnimation<Color>(
                appTheme.orange700,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.v),
        CustomElevatedButton(
          text: "Bước tiếp theo -> ",
        ),
      ],
    );
  }
}
