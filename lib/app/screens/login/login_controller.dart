import 'package:diamond_data/app/data/repositories/api.repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/app.constants.dart';
import '../../routes/app.routes.dart';
import '../../services/storage_service.dart';

class LoginController extends GetxController {
  final textEditingControllerCustomerId = "".obs;
  final textEditingControllerPassword = "".obs;
  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  bool get canLogin =>
      textEditingControllerCustomerId.value.isNotEmpty &&
      textEditingControllerPassword.value.isNotEmpty;

  login() async {
    isLoading.value = true;
    try {
      final response = await ApiRepository.instance.login(
          textEditingControllerCustomerId.value, textEditingControllerPassword.value);
      if (response["found"] == true) {
        

        StorageService.instance.save(AppConstants.userKey, response);
        StorageService.instance.save(AppConstants.userIdKey, response["customerId"]);
        Get.snackbar(
          "success",
          "User found",
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.offAndToNamed(AppRoutes.diamondDataRoute);
      } else {
        Get.snackbar(
          response["message"],
          response["subtitle"],
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
        );
      }
      isLoading.value = false;
    } catch (e) {
      Get.snackbar(
          "Some error occurred.", e.toString(), //"Please try again later.",
          snackPosition: SnackPosition.BOTTOM);
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    textEditingControllerCustomerId.value = "";
    textEditingControllerPassword.value = "";
    super.onClose();
  }
  @override
  void dispose() {
    textEditingControllerCustomerId.value = "";
    textEditingControllerPassword.value = "";
    super.dispose();
  }
}
