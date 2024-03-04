import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

// ignore: must_be_immutable
class RecipecardlistItemWidget extends StatelessWidget {
  const RecipecardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame730,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: 149.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 129.v),
          Container(
            width: 149.h,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillGray900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bánh xèo",
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClockOnerrorcontainer,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "20 phút",
                        style:
                            CustomTextStyles.labelLargeOnErrorContainerMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
