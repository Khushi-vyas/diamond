import 'package:diamond_data/app/routes/app.pages.dart';
import 'package:diamond_data/app/routes/app.routes.dart';
import 'package:diamond_data/app/services/storage_service.dart';
import 'package:diamond_data/app/themes/light_theme.dart';
import 'package:diamond_data/utils/helpers/app.translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/app.constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    checkUser() {
      print(StorageService.instance.fetch(AppConstants.userKey));
      print(StorageService.instance.fetch(AppConstants.userKey).isEmpty);
      print(StorageService.instance.fetch(AppConstants.userIdKey));
      if (StorageService.instance.fetch(AppConstants.userKey).isEmpty) {
        return AppRoutes.loginRoute;
      } else {
        return AppRoutes.homeRoute;
      }
    }

    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: 'Balance report',
      theme: diamondAppTheme,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: checkUser(),
      getPages: AppPages.pages,
    );
  }
}
