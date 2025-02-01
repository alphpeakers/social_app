import 'package:get/get.dart';
import 'package:social_app/views/auth/forgot_password.dart';
import 'package:social_app/views/home/home_screen.dart';

import '../views/auth/login_view.dart';
import '../views/auth/register_view.dart';
import '../views/notification/notification_screen.dart';
import '../views/post/post_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const signup = '/signup';
  static const forgotPass = '/forgotPass';
  static const home = '/home';
  static const notifcation = '/notification';
  static const postscreen = '/postscreen';
  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => const RegisterView(),
    ),
    GetPage(name: AppRoutes.forgotPass, page: () => const ForgotPassword()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.notifcation, page: () => NotificationScreen()),
    GetPage(name: AppRoutes.postscreen, page: ()=> PostScreen())
  ];
}
