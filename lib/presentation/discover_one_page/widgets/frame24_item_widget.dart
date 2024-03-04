import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Frame24ItemWidget extends StatelessWidget {
  const Frame24ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 7.v,
        right: 28.h,
        bottom: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Thích",
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgTelevisionOnerrorcontainer19x16,
        height: 12.adaptSize,
        width: 12.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: false,
      backgroundColor: appTheme.gray300,
      selectedColor: appTheme.orange700,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
