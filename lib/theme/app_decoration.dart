import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.4),
      );
  static BoxDecoration get fillBluegray70001 => BoxDecoration(
        color: appTheme.blueGray70001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray30001 => BoxDecoration(
        color: appTheme.gray30001.withOpacity(0.22),
      );
  static BoxDecoration get fillGray700 => BoxDecoration(
        color: appTheme.gray700,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.5),
      );
  static BoxDecoration get fillGray9001 => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnErrorContainer2 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.4),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange700,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.95),
          end: Alignment(0.5, 0.66),
          colors: [
            appTheme.black90001.withOpacity(0.05),
            appTheme.black90001.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.95),
          end: Alignment(0.5, 0.89),
          colors: [
            appTheme.black90001.withOpacity(0.05),
            appTheme.black90001.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack900011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.74),
          end: Alignment(0.5, 0.9),
          colors: [
            appTheme.black90001.withOpacity(0.5),
            appTheme.black90001.withOpacity(0.5),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray300 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray300,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.blueGray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray3001 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray300.withOpacity(0.22),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.gray30001.withOpacity(0.22),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal90021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayA => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1.42,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo100 => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOrange => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.orange700,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal90021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOrange700 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal90021,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder56 => BorderRadius.circular(
        56.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(15.h),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    