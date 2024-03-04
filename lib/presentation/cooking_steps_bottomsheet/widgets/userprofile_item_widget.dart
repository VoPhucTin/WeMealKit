import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120.v,
              width: 327.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: appTheme.blueGray300,
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BƯỚC 1",
                  style: CustomTextStyles.labelLargeOrange700,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 300.h,
                  child: Text(
                    "Cho nấm khô và tảo bẹ kombu vào chén nhỏ hoặc và đổ nước phủ bề mặt.\nĐặt một miêng khăn giấy lên mặt nước để giữ nấm ngấm đều nước trong 10 phút.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.45,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
