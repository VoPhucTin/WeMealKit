import '../home_page/widgets/carousellist_item_widget.dart';
import '../home_page/widgets/row_item_widget.dart';
import '../home_page/widgets/userprofile5_item_widget.dart';
import '../home_page/widgets/userprofilelist5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 19.h, bottom: 10.h),
                          child: _buildFrameRow(
                            context,
                            dynamicText: "WeMealKit",
                            dynamicIcon: Icons.notifications_sharp,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildCarouselList(context),
                        SizedBox(height: 24.v),
                        _buildFeaturedSection(context),
                        SizedBox(height: 25.v),
                        _buildBancaColumn(context),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(right: 19.h),
                          child: _buildFrameRow(
                            context,
                            dynamicText: "Có thể bạn muốn thử",
                            dynamicIcon: "Xem thêm",
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildUserProfileList(context),
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
  Widget _buildCarouselList(BuildContext context) {
    return SizedBox(
      height: 133.v,
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
        itemCount: 2,
        itemBuilder: (context, index) {
          return CarousellistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Danh mục ẩm thực",
          style: CustomTextStyles.titleMediumBold18,
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(right: 14.h),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 65.v,
              crossAxisCount: 4,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return RowItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBancaColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bữa ăn của bạn thế nào?",
          style: CustomTextStyles.titleMediumBold18,
        ),
        SizedBox(height: 5.v),
        Text(
          "Hãy review những món bạn đã từng nấu nhé.",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 16.v),
        SizedBox(
          height: 192.v,
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
              return Userprofile5ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Userprofilelist5ItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String dynamicText,
    required dynamic dynamicIcon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleMediumBold18.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: dynamicIcon is IconData // Kiểm tra nếu dynamicIcon là IconData
              ? GestureDetector(
                  // Thêm GestureDetector
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
                  },
                  child: Icon(
                    // Icon nằm trong GestureDetector
                    dynamicIcon,
                    color: appTheme.orange700,
                  ),
                )
              : GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.notificationsScreen);
                },
                child: Text(
                  // Nếu không phải IconData, trả về Text
                  dynamicIcon,
                  style: CustomTextStyles.titleSmallOrange700.copyWith(
                    color: appTheme.orange700,
                  ),
                ),
              ) 
        ),
      ],
    );
  }
}
