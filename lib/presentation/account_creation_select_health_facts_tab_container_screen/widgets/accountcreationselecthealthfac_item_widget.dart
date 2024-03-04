import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class AccountcreationselecthealthfacItemWidget extends StatelessWidget {
  const AccountcreationselecthealthfacItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 93.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 93.h,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Text(
            "Tiểu đường",
            style: CustomTextStyles.titleSmallMedium,
          ),
        ),
      ),
    );
  }
}
