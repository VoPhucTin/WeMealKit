import '../discover_one_page/widgets/carousel_item_widget.dart';
import '../discover_one_page/widgets/frame22_item_widget.dart';
import '../discover_one_page/widgets/frame24_item_widget.dart';
import '../discover_one_page/widgets/userprofile8_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DiscoverOnePage extends StatefulWidget {
  const DiscoverOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverOnePageState createState() => DiscoverOnePageState();
}

class DiscoverOnePageState extends State<DiscoverOnePage>
    with AutomaticKeepAliveClientMixin<DiscoverOnePage> {
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Clip mới từ chuyên gia",
                        style: CustomTextStyles.titleMediumBold18,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildUserProfile(context),
                    SizedBox(height: 16.v),
                    SizedBox(
                      height: 2161.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 2161.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 2161.v,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray300,
                                      ),
                                    ),
                                  ),
                                  _buildFrame2(context),
                                  _buildFrame4(context),
                                  _buildFeatured(context),
                                ],
                              ),
                            ),
                          ),
                          _buildFrame6(context),
                        ],
                      ),
                    ),
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
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 189.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Userprofile8ItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 654.v),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage15,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "5FOODS - Thực phẩm sơ chế sẵn",
                            style: CustomTextStyles.labelLargeMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkOrange700,
                            height: 16.v,
                            width: 12.h,
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "2 giờ trước",
                        style: CustomTextStyles.labelLargeBluegray300,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgOverflowMenu,
                  height: 12.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 19.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.v),
            SizedBox(
              width: 323.h,
              child: Text(
                "Dù bận rộn đến mấy, bạn cũng luôn mong sẽ chế biến được cho gia đình những bữa cơm nhà đủ dinh dưỡng, đảm bảo sức khỏe. Luôn hiểu điều đó, 5Foods gửi đến bạn chương trình ''FREE SHIP GIỜ VÀNG'', rút ngắn thời gian đi chợ...",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.45,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Xem thêm",
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 13.v),
            Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage16,
                  height: 327.adaptSize,
                  width: 327.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                SizedBox(height: 12.v),
                CustomElevatedButton(
                  height: 30.v,
                  text: "Nhận khuyến mãi ngay",
                  buttonStyle: CustomButtonStyles.fillOrangeTL8,
                  buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 12.v),
                _buildFrame(
                  context,
                  dynamicText1: "134 lượt thích",
                  dynamicText2: "24 bình luận",
                ),
                SizedBox(height: 12.v),
                Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children:
                      List<Widget>.generate(3, (index) => Frame22ItemWidget()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUbpMinhTuN(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1532x32,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Đầu bếp Minh Tuấn",
                        style: CustomTextStyles.labelLargeMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkOrange700,
                        height: 16.v,
                        width: 12.h,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "2 giờ trước",
                    style: CustomTextStyles.labelLargeBluegray300,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgOverflowMenu,
              height: 12.v,
              width: 11.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 19.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Container(
          width: 318.h,
          margin: EdgeInsets.only(right: 9.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "Hướng dẫn cách chế biến món salad đậm đà theo phong cách Pháp\n",
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text:
                      "Thông thường mọi người hay làm món salad là cho các nguyên liệu vào các tô trước, nêm gia vị rồi trộn salad lên. Nhưng với người Pháp, họ...",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Xem thêm",
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.v),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildUbpMinhTuN(context),
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: ImageConstant.imgImage16327x327,
              height: 327.adaptSize,
              width: 327.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
            SizedBox(height: 12.v),
            _buildFrame(
              context,
              dynamicText1: "134 lượt thích",
              dynamicText2: "24 bình luận",
            ),
            SizedBox(height: 12.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: _buildRow02(
                    context,
                    shareImage:
                        ImageConstant.imgTelevisionOnerrorcontainer19x16,
                    labelText: "Thích",
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray900,
                          height: 16.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Bình luận",
                            style: CustomTextStyles.labelLargeMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: _buildRow02(
                    context,
                    shareImage: ImageConstant.imgShare,
                    labelText: "Chia sẻ",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeatured(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 644.v),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "Chợ organic khao đến 150K",
                style: CustomTextStyles.titleMediumBold18,
              ),
            ),
            SizedBox(height: 13.v),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 133.v,
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
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CarouselItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 630.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 12.v),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage151,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text(
                                          "Bách hoá cô Hoa",
                                          style:
                                              CustomTextStyles.labelLargeMedium,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCheckmarkOrange700,
                                        height: 16.v,
                                        width: 12.h,
                                        margin: EdgeInsets.only(left: 6.h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "1 giờ trước",
                                    style:
                                        CustomTextStyles.labelLargeBluegray300,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgOverflowMenu,
                              height: 12.v,
                              width: 11.h,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 19.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 11.v),
                        Container(
                          width: 312.h,
                          margin: EdgeInsets.only(right: 15.h),
                          child: Text(
                            "Lòng heo tươi có thể chế biến thành nhiều món ăn ngon, lạ miệng được nhiều người ưa chuộng. Tuy nhiên để bảo quản chúng đúng cách, giữ được lâu thì không phải ai cũng biết...",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.45,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Xem thêm",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    SizedBox(height: 352.v),
                    CustomElevatedButton(
                      height: 30.v,
                      text: "Theo dõi cửa hàng",
                      buttonStyle: CustomButtonStyles.fillOrangeTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnErrorContainer,
                    ),
                    SizedBox(height: 12.v),
                    _buildFrame(
                      context,
                      dynamicText1: "134 lượt thích",
                      dynamicText2: "24 bình luận",
                    ),
                    SizedBox(height: 12.v),
                    Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                          3, (index) => Frame24ItemWidget()),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 127.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 327.adaptSize,
                      width: 327.adaptSize,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage161,
                            height: 327.adaptSize,
                            width: 327.adaptSize,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 27.h,
                              margin: EdgeInsets.only(
                                top: 9.v,
                                right: 10.h,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6.h),
                              decoration: AppDecoration.outlineTeal.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Text(
                                "1/2",
                                style: CustomTextStyles.bodySmallGray900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage17,
                      height: 327.adaptSize,
                      width: 327.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
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

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText1,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
        Text(
          dynamicText2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRow02(
    BuildContext context, {
    required String shareImage,
    required String labelText,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: shareImage,
              height: 16.v,
              width: 12.h,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                labelText,
                style: CustomTextStyles.labelLargeMedium.copyWith(
                  color: appTheme.gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
