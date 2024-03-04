import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray300,
                  borderRadius: BorderRadius.circular(8.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange700,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillOrangeTL24 => BoxDecoration(
        color: appTheme.orange700,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
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
  static BoxDecoration get outlineTeal => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
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
  static BoxDecoration get fillOnErrorContainerTL24 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.4),
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillOrangeTL16 => BoxDecoration(
        color: appTheme.orange700,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineOnErrorContainerTL22 => BoxDecoration(
        color: appTheme.orange700,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12.h),
      );
}
