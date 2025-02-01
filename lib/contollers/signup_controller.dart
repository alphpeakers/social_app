import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

//email validator
  String? validEmail(value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  //usename validator
  String? validUserName(value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    } else if (value.length < 3) {
      return 'Username must be at least 3 characters long';
    }
    return null;
  }

  //password validator
  String? validPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6 || value.length > 6) {
      return 'Password must be at least 6 characters long';
    } 
    return null;
  }

  // confirm password validator
  String? validateConfirmPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  // SignUp logic
  void signUp(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      Get.back();
    } else {
      Get.snackbar('Error', 'Please fix the errors in the form',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
