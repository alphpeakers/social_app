import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/contollers/signup_controller.dart';

import '../../utils/helper/custom_form.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final SignUpController controller = Get.put(SignUpController());
    final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // ✅ No duplicate key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF1F41BB),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    'Create an account so you can explore all the \n                          existing jobs',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  height: 60,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomForm(
                        text: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        validator: controller.validEmail,
                        controller: controller.emailController,
                      ),
                      const SizedBox(height: 15),
                      CustomForm(
                        text: 'Username',
                        validator: controller.validUserName,
                        keyboardType: TextInputType.name,
                        controller: controller.usernameController,
                      ),
                      const SizedBox(height: 15),
                      CustomForm(
                        text: 'Password',
                        validator: controller.validPassword,
                        keyboardType: TextInputType.number,
                        controller: controller.passwordController,
                        suffixIcon: true,
                      ),
                      const SizedBox(height: 15),
                      CustomForm(
                        text: 'Conform Password',
                        validator: controller.validateConfirmPassword,
                        keyboardType: TextInputType.number,
                        suffixIcon: true,
                        controller: controller.confirmPasswordController,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap:()=> controller.signUp(formKey),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFF1F41BB)),
                    child: const Center(
                        child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text('Already have an accountt'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
