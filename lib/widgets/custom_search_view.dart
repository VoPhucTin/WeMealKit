import 'package:flutter/material.dart';
import 'package:wemealkit/core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    // this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  // final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          // focusNode: focusNode ?? FocusNode(),
          // autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged!.call(value);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeBluegray300,
        prefixIcon: prefix ??
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 17.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 54.v,
            ),
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(
                right: 15.h,
              ),
              child: IconButton(
                onPressed: () => controller!.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 54.v,
            ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              top: 17.v,
              right: 17.h,
              bottom: 17.v,
            ),
        fillColor:
            fillColor ?? theme.colorScheme.onErrorContainer.withOpacity(1),
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 2,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 2,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 2,
              ),
            ),
      );
}

/// Extension on [CustomSearchView] to facilitate inclusion of all types of border style etc
extension SearchViewStyleHelper on CustomSearchView {
  static OutlineInputBorder get outlineGrayTL8 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.h),
        borderSide: BorderSide(
          color: appTheme.gray300,
          width: 2,
        ),
      );
}
