import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            right: 4.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Năm sinh",
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "2001",
                style: CustomTextStyles.titleMediumOrange700Bold,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        CustomImageView(
          imagePath: ImageConstant.imgFrame715,
          height: 33.v,
          width: 327.h,
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "1998",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "1999",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "2000",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "2001",
              style: CustomTextStyles.labelLargeOrange700,
            ),
            Text(
              "2002",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "2003",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "2004",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
          ],
        ),
      ],
    );
  }
}
