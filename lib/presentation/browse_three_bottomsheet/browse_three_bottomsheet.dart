import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BrowseThreeBottomsheet extends StatelessWidget {
  const BrowseThreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildProfileSection(context),
    );
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 522.v,
      ),
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 142.v,
        width: 327.h,
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.12,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupOnerrorcontainer,
                height: 142.v,
                width: 154.h,
                alignment: Alignment.centerRight,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 16.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bạn có thể nấu",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "782 món",
                      style: CustomTextStyles.titleLargeGray900,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "từ 34 nguyên liệu của bạn",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 34.v,
                      width: 141.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray300,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 34.v,
                      width: 141.h,
                      text: "Mở khoá tất cả",
                      margin: EdgeInsets.only(left: 12.h),
                      buttonStyle: CustomButtonStyles.fillOrangeTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnErrorContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
