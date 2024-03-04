import '../discover_courses_page/widgets/frame26_item_widget.dart';
import '../discover_courses_page/widgets/userprofile9_item_widget.dart';
import '../discover_courses_page/widgets/userprofilelist9_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DiscoverCoursesPage extends StatefulWidget {
  const DiscoverCoursesPage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverCoursesPageState createState() => DiscoverCoursesPageState();
}

class DiscoverCoursesPageState extends State<DiscoverCoursesPage>
    with AutomaticKeepAliveClientMixin<DiscoverCoursesPage> {
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
                    _buildUserProfileColumn(context),
                    SizedBox(height: 21.v),
                    Container(
                      height: 1274.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      decoration: AppDecoration.fillGray,
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
                              decoration:
                                  AppDecoration.fillOnErrorContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Các khoá học tiêu biểu",
                                      style: CustomTextStyles.titleMediumBold18,
                                    ),
                                  ),
                                  SizedBox(height: 53.v),
                                  CustomSearchView(
                                    controller: searchController,
                                    hintText: "Tìm kiếm khoá học...",
                                  ),
                                  SizedBox(height: 16.v),
                                  _buildUserProfileList(context),
                                ],
                              ),
                            ),
                          ),
                          _buildFrame(context),
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
  Widget _buildUserProfileColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23.h),
          child: Text(
            "Chào mừng bạn đã quay trở lại 🙌",
            style: CustomTextStyles.bodySmallGray900_1,
          ),
        ),
        SizedBox(height: 6.v),
        Padding(
          padding: EdgeInsets.only(left: 23.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Bạn có ",
                  style: CustomTextStyles.titleMediumBold_1,
                ),
                TextSpan(
                  text: "4 khoá học chưa hoàn thành",
                  style: CustomTextStyles.titleMediumBold_1.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 19.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 340.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 22.h),
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
                return Userprofile9ItemWidget();
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return Userprofilelist9ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 52.v),
        child: Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(4, (index) => Frame26ItemWidget()),
        ),
      ),
    );
  }
}
