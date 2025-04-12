// lib/controllers/login_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Email and password cannot be empty');
      return;
    }

    isLoading.value = true;

    // Simulated login delay
    await Future.delayed(Duration(seconds: 2));

    isLoading.value = false;

    // Simulate successful login
    Get.snackbar('Success', 'Logged in successfully');
    // Navigate to home or dashboard
    // Get.to(() => HomePage()); // Uncomment when HomePage is created
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
