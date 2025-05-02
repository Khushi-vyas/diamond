import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:diamond_data/utils/constants/app.dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDecoration {
  static InputBorder inputOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimension.kRadius),
      borderSide: const BorderSide(
        color: AppTheme.themeBorderColor,
      ),
    );
  }

  static InputBorder errorOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimension.kRadius),
      borderSide: const BorderSide(
        color: AppTheme.themeErrorColor,
      ),
    );
  }

  static InputDecoration textFieldDecoration(
      {String? hintText,
      String? labelText,
      String? errorText,
      bool error = false}) {
    return InputDecoration(
      labelText: labelText,
      errorText: errorText,
      hintText: hintText,
      border: inputOutlineBorder(),
      disabledBorder: inputOutlineBorder(),
      enabledBorder: inputOutlineBorder(),
      errorBorder: errorOutlineBorder(),
      focusedBorder: inputOutlineBorder(),
      focusedErrorBorder: errorOutlineBorder(),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimension.kPadding,
        vertical: AppDimension.kPadding - 4,
      ),

      hintStyle:
          Theme.of(Get.key.currentContext!).textTheme.bodyMedium!.copyWith(),
      labelStyle:
          Theme.of(Get.key.currentContext!).textTheme.labelMedium!.copyWith(),
      alignLabelWithHint: false,
      // isDense: true,
    );
  }
}
