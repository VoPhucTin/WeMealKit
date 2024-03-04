import '../account_creation_select_health_facts_tab_container_screen/widgets/accountcreationselecthealthfac_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/presentation/account_creation_select_health_facts_page/account_creation_select_health_facts_page.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';

class AccountCreationSelectHealthFactsTabContainerScreen
    extends StatefulWidget {
  const AccountCreationSelectHealthFactsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AccountCreationSelectHealthFactsTabContainerScreenState createState() =>
      AccountCreationSelectHealthFactsTabContainerScreenState();
}

class AccountCreationSelectHealthFactsTabContainerScreenState
    extends State<AccountCreationSelectHealthFactsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Container(
                width: 316.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 35.h,
                ),
                child: Text(
                  "Nếu bạn thuộc một trong những nhóm đối tượng dưới đây, hãy để chúng tôi biết để đảm bảo bữa ăn phù hợp nhất cho bạn.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.45,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildAccountCreationSelectHealthFac(context),
              SizedBox(height: 41.v),
              _buildTabView(context),
              SizedBox(
                height: 422.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    AccountCreationSelectHealthFactsPage(),
                    AccountCreationSelectHealthFactsPage(),
                    AccountCreationSelectHealthFactsPage(),
                    AccountCreationSelectHealthFactsPage(),
                    AccountCreationSelectHealthFactsPage(),
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
        text: "Tình trạng sức khỏe",
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountCreationSelectHealthFac(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Tiền sử bệnh lý",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 15.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 34.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return AccountcreationselecthealthfacItemWidget();
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "Dị ứng",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 15.v),
        Container(
          height: 34.v,
          width: 351.h,
          child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            labelStyle: TextStyle(
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelColor: appTheme.gray900,
            unselectedLabelStyle: TextStyle(
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            indicator: BoxDecoration(
              color: appTheme.orange700,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            tabs: [
              Tab(
                child: Text(
                  "Hải sản",
                ),
              ),
              Tab(
                child: Text(
                  "Đậu nành",
                ),
              ),
              Tab(
                child: Text(
                  "Đường sữa",
                ),
              ),
              Tab(
                child: Text(
                  "Trứng",
                ),
              ),
              Tab(
                child: Text(
                  "Đậu phộng",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
