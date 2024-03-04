import '../cart_add_screen/widgets/content_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';
import 'package:wemealkit/widgets/custom_icon_button.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

class CartAddScreen extends StatelessWidget {
  CartAddScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Tìm kiếm nguyên liệu",
                ),
              ),
              SizedBox(height: 20.v),
              _buildInterest01(context),
              SizedBox(height: 28.v),
              SizedBox(
                height: 706.v,
                width: 338.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomElevatedButton(
                      width: 327.h,
                      text: "Hoàn thành",
                      margin: EdgeInsets.only(bottom: 112.v),
                      alignment: Alignment.bottomLeft,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thiết yếu",
                            style: CustomTextStyles.titleMediumBold18,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            height: 683.v,
                            width: 338.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 671.v,
                                    width: 326.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 143.h,
                                            top: 217.v,
                                          ),
                                          child: CustomIconButton(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.topLeft,
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCheckmarkOrange70024x24,
                                            ),
                                          ),
                                        ),
                                        _buildContent(context),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCheckmarkOrange7001,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Giỏ đi chợ",
      ),
    );
  }

  /// Section Widget
  Widget _buildInterest01(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillOrangeTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nhập bằng giọng nói",
                  style: CustomTextStyles.titleSmallMedium,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 187.h,
                  child: Text(
                    "Thêm nhiều nguyên liệu thật dễ dàng",
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 16.h,
      mainAxisSpacing: 16.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return ContentItemWidget();
      },
    );
  }
}
