import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class DiscovertwoItemWidget extends StatelessWidget {
  const DiscovertwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 48.h,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Text(
            "Tất cả",
            style: CustomTextStyles.labelLargeOnErrorContainerMedium,
          ),
        ),
      ),
    );
  }
}
