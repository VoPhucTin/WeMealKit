import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgUserOrange70024x24,
        activeIcon: ImageConstant.imgUserOrange70024x24,
        type: BottomBarEnum.Userorange70024x24,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgReply,
      activeIcon: ImageConstant.imgReply,
      type: BottomBarEnum.Reply,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockBlueGray300,
      activeIcon: ImageConstant.imgLockBlueGray300,
      type: BottomBarEnum.Lockbluegray300,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 115.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: appTheme.orange700,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        color: appTheme.blueGray300,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Userorange70024x24,
  Reply,
  Cart,
  Lockbluegray300,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
