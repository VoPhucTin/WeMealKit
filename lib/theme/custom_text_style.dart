import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeBluegray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get bodyLargeBluegray7000118 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray70018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeSecondaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get bodyLargeSecondaryContainer_2 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallFontAwesome6Pro =>
      theme.textTheme.bodySmall!.fontAwesome6Pro;
  static get bodySmallFontAwesome6ProOrange700 =>
      theme.textTheme.bodySmall!.fontAwesome6Pro.copyWith(
        color: appTheme.orange700,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 10.fSize,
      );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  // Headline text style
  static get headlineLargeGray900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.39),
      );
  static get headlineLargeSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.39),
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
      );
  static get headlineMediumOnErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  // Label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray300_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get labelLargeBluegray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeOnErrorContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOrange700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange700,
      );
  static get labelLargeOrange700Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOrange700Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRedA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBluegray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get labelMediumBluegray70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get labelMediumBluegray7000111 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray70001.withOpacity(0.62),
        fontSize: 11.fSize,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get labelMediumSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeOrange700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange700,
      );
  static get titleLargeSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumBluegray300Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray300_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumBluegray70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumOrange700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange700,
      );
  static get titleMediumOrange700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOrange700Bold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumSecondaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallBluegray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get titleSmallBluegray70001Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray70001Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnErrorContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnErrorContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOrange700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOrange700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get fontAwesome6Pro {
    return copyWith(
      fontFamily: 'Font Awesome 6 Pro',
    );
  }

  TextStyle get alumniSans {
    return copyWith(
      fontFamily: 'Alumni Sans',
    );
  }
}
