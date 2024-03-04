import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';
import 'package:wemealkit/widgets/app_bar/appbar_leading_image.dart';
import 'package:wemealkit/widgets/app_bar/appbar_title.dart';
import 'package:wemealkit/widgets/app_bar/custom_app_bar.dart';
import 'package:wemealkit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DiscoverThreePage extends StatelessWidget {
  const DiscoverThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 21.v),
              padding: EdgeInsets.symmetric(horizontal: 23.h),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                    height: 24.v,
                    width: 108.h,
                    text: "Mẹo vặt bếp núc",
                    buttonStyle: CustomButtonStyles.fillOrangeTL8,
                    buttonTextStyle:
                        CustomTextStyles.labelLargeOnErrorContainerMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 7.v),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "7 mối nguy gây hại cho bồn rửa chén mà ít ai ngờ tới",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBold_2.copyWith(
                        height: 1.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgBg190x327,
                    height: 190.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 319.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text(
                      "Đổ trực tiếp thức ăn hoặc chất lỏng thừa xuống bồn rửa có thể gây hư hỏng đường ống. Sau đây là 7 mối nguy gây hại cho bồn rửa chén mà ít ai ngờ tới.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildFeaturedFrame(
                    context,
                    textMessage: "XEM NHANH",
                    descriptionText:
                        "Cơm\nBã cà phê\nVỏ trứng\nSợi mì\nDầu mỡ\nThuốc hết hạn sử dụng\nThuốc tẩy",
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "Nhiều người thường có thói quen đổ trực tiếp thức ăn hay các vật phẩm thừa vào bồn rửa vì mang lại sự thuận tiện. Tuy nhiên, việc này gây ra nhiều ảnh hưởng xấu đến đường ống và hệ thống thoát nước. Cùng ICC tìm hiểu xem những mối nguy đó là gì nhé!",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cơm",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 323.h,
                    child: Text(
                      "Khi cơm bị ngâm trong nước, hạt cơm sẽ hấp thụ nước và trương nở. Lúc này, các hạt cơm sẽ kết dính lại với nhau, tạo thành cục lớn hơn. Điều này có thể gây tắc nghẽn đường ống. Việc làm sạch sau khi cơm đã khô cũng có thể gặp khó khăn, các cục cơm khô có thể dính chặt vào bề mặt bồn rửa.",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage19,
                    height: 183.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bã cà phê",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 325.h,
                    child: Text(
                      "Thành phần của bã cà phê chứa các chất không tan trong nước, những chất này có độ nhớt cao và có thể kết dính với các chất khác trong cống như chất bẩn và các tạp chất khác. Khi bã cà phê được đổ xuống đường ống, chúng có thể tích tụ lại và bám vào các vật khác trong đường ống, gây tắc cống và làm giảm dòng chảy của nước.",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Vỏ trứng",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "Mặc dù vỏ trứng có vẻ mỏng manh, nhưng chúng có cấu trúc cứng vì vậy có thể gây tắc cống nếu đổ xuống đường ống nước. Vỏ trứng ướt có thể dính vào đường ống và sau khi khô, chúng có thể kết dính lại và trở nên cứng rắn, gây tắc cống và làm giảm dòng chảy của nước.",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 183.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sợi mì",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "Các thực phẩm giàu tinh bột như mì có khả năng phồng lên nhiều lần khi tiếp xúc với nước. Vì vậy, khi chúng bị đổ vào đường ống thường gây tắc nghẽn đường ống.\nĐổ nước nóng xuống cống có thể giúp làm mềm và phân rã sợi mì, tạo điều kiện tốt hơn để nước làm cho chúng dễ dàng trôi qua hệ thống ống. Tuy nhiên, cần lưu ý rằng đây chỉ là một biện pháp tạm thời và không thể hoàn toàn loại bỏ tắc nghẽn.",
                      maxLines: 11,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Dầu mỡ",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "Dầu ăn thừa từ quá trình nấu nướng khi đổ xuống cống sẽ đông lại và tạo thành cặn dầu bám vào thành ống. Khi cặn dầu tích tụ và tích lũy trong thời gian dài, nó có thể gây tắc cống và gây mùi hôi khó chịu.\nDầu ăn có độ nhớt cao và không tan trong nước, vì vậy khi nó đông lại trong ống thoát nước, nó có thể tạo thành một lớp cứng và dính chặt vào bề mặt ống. Lâu ngày, việc tích tụ cặn dầu này có thể làm giảm đường kính của ống thoát nước và gây tắc cống.",
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage21,
                    height: 183.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Thuốc hết hạn sử dụng",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "Thuốc hết hạn chứa các hợp chất hoá học có thể gây ảnh hưởng tiêu cực đến môi trường và nguồn nước. Khi thuốc hết hạn được đổ xuống cống, chúng có thể thâm nhập vào hệ thống nước ngầm hoặc các nguồn nước khác, gây ô nhiễm và tiềm ẩn nguy cơ cho sinh vật và hệ sinh thái tự nhiên. Một số hợp chất trong thuốc có thể khá ổn định và khó phân hủy trong môi trường, vì vậy chúng có thể tồn tại trong môi trường trong thời gian dài.",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Thuốc tẩy",
                      style: CustomTextStyles.titleMediumBold18,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 327.h,
                    child: Text(
                      "Đổ thuốc tẩy xuống cống có thể tạo ra khí chloramine nguy hiểm. Khi khí chloramine được tạo ra trong môi trường cống có thể tạo ra khói có mùi khá khó chịu và chứa các hợp chất gây kích ứng và độc hại. Hít thở khí chloramine có thể gây khó thở, viêm màng nhầy và kích ứng đường hô hấp.",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage22,
                    height: 183.v,
                    width: 327.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "Trên đây là 7 mối nguy hại gây ảnh hưởng đến hệ thống thoát nước của bồn rửa. Hy vọng bài viết này sẽ giúp ích cho bạn trong việc giữ gìn bồn rửa và căn bếp một cách sạch sẽ.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium_1.copyWith(
                        height: 1.45,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildFeaturedFrame(
                    context,
                    textMessage: "BÀI VIẾT KHÁC BẠN CÓ THỂ QUAN TÂM",
                    descriptionText:
                        "Hóa ra chỗ này trên bồn rửa chén lại có công dụng hay ho đến như vậy!\nMẹo giữ cho bồn rửa chén của bạn luôn sạch sẽ \nCách diệt sạch vi khuẩn trong bồn rửa chén với giấm và muối ăn",
                  ),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                    height: 30.v,
                    text: "Xem các bài viết khác",
                    buttonStyle: CustomButtonStyles.fillOrangeTL8,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallOnErrorContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Khám phá",
      ),
    );
  }

  /// Common widget
  Widget _buildFeaturedFrame(
    BuildContext context, {
    required String textMessage,
    required String descriptionText,
  }) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            textMessage,
            style: CustomTextStyles.labelLargeOrange700.copyWith(
              color: appTheme.orange700,
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 282.h,
              margin: EdgeInsets.only(
                left: 6.h,
                right: 13.h,
              ),
              child: Text(
                descriptionText,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray900_1.copyWith(
                  color: appTheme.gray900,
                  height: 1.30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
