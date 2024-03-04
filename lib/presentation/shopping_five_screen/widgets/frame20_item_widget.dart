import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Frame20ItemWidget extends StatelessWidget {
  const Frame20ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Giao hàng nhanh",
        style: TextStyle(
          color: appTheme.orange700,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: appTheme.indigo10001,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.orange700,
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
