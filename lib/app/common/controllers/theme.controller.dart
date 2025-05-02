import 'package:diamond_data/app/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  Rx<ThemeData> currentTheme = AppTheme.lightTheme.obs;

  void toggleTheme() {
    currentTheme.value = AppTheme.lightTheme;
  }
}
