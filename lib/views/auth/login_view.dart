import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/contollers/sigin_controller.dart';
import 'package:social_app/routes/app_pages.dart';
import 'package:social_app/utils/helper/custom_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final SiginController controller = Get.put(SiginController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                  'Login Here',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF1F41BB),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Welcome back you’ve\n       been missed!',
                    style: TextStyle(
                      fontSize: 20,
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
                        controller: controller.emailController,
                        validator: controller.validEmail,
                      ),
                      const SizedBox(height: 15),
                      CustomForm(
                        text: 'Password',
                        suffixIcon: true,
                        keyboardType: TextInputType.number,
                        controller: controller.passwordController,
                        validator: controller.validPassword,
                        obscureText: controller.isPasswordHidden.value,
                        onSuffixTap: controller.togglePasswordVisibility,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.forgotPass);
                      },
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: Color(0xFF1F41BB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: () => controller.signIn(formKey),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFF1F41BB)),
                    child: const Center(
                        child: Text(
                      'Sign in',
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
                      Get.toNamed(AppRoutes.signup);
                    },
                    child: const Text('Create new account')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
