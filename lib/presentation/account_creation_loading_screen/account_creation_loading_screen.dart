import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class AccountCreationLoadingScreen extends StatelessWidget {
  const AccountCreationLoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 96.v,
            right: 24.h,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 198.v,
                width: 264.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 55.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIllstration07,
                      height: 181.adaptSize,
                      width: 181.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 32.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlayTeal400,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 64.v),
              Container(
                height: 8.v,
                width: 327.h,
                decoration: BoxDecoration(
                  color: appTheme.orange700,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.72,
                    backgroundColor: appTheme.orange700,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.orange700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Text(
                "Sắp xong rồi...",
                style: CustomTextStyles.titleMediumBold18,
              ),
              SizedBox(height: 4.v),
              Container(
                width: 265.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  right: 31.h,
                ),
                child: Text(
                  "Đang tạo thực đơn lý tưởng mà tiết kiệm cho bạn...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18.copyWith(
                    height: 1.45,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
