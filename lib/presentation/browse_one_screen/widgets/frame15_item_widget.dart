import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Frame15ItemWidget extends StatelessWidget {
  const Frame15ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 1.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Món nướng",
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.orange700,
      selectedColor: appTheme.orange700,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          7.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
