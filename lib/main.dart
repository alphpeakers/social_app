import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/routes/app_pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
