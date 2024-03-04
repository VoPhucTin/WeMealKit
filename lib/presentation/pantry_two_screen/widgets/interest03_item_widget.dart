import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Interest03ItemWidget extends StatelessWidget {
  const Interest03ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 15.v,
        right: 12.h,
        bottom: 15.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Lò nướng",
        style: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgBrookeLark08b,
        height: 36.adaptSize,
        width: 36.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
        margin: EdgeInsets.only(right: 10.h),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
