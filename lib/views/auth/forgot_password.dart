import 'package:flutter/material.dart';

import '../../contollers/signup_controller.dart';
import '../../utils/helper/custom_form.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final SignUpController controller = SignUpController();
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
                  'Forgot password',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF1F41BB),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: formKey,
                  child: CustomForm(
                      text: 'Email',
                      controller: controller.emailController,
                      validator: controller.validEmail),
                ),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                  //onTap: controller.signIn,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFF1F41BB)),
                    child: const Center(
                        child: Text(
                      'Send mail',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
