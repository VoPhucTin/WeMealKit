import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class Frame12ItemWidget extends StatelessWidget {
  const Frame12ItemWidget({Key? key})
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
        "Cà chua đóng hộp",
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.orange700,
      selectedColor: appTheme.indigo10001,
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
