
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/routes/app_pages.dart';

class SiginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isPasswordHidden = false.obs;
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

//email validator
  String? validEmail(value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  //password validator
  String? validPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6 || value.length > 6) {
      return 'Please enter at least 6 characters';
    }
    return null;
  }

  //signin
  void signIn(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.home);
    } else {
      Get.snackbar(
        'Error',
        'Please fix the errors in the form',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
