import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Login Here'),
          Text('Welcome back you’ve been missed!'),
          SizedBox(
            height: 20,
          ),
          Form(
            child: SizedBox(
              width: 100,
              height: 50,
              child: TextFormField(),
            ),
          )
        ],
      ),
    );
  }
}
