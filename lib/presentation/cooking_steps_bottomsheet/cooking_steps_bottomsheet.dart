import '../cooking_steps_bottomsheet/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CookingStepsBottomsheet extends StatelessWidget {
  const CookingStepsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.gradientBlackToBlack90001,
      child: Column(
        children: [
          Text(
            "Tất cả các bước",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 26.v),
          _buildUserProfile(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
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
      itemCount: 4,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
    );
  }
}
