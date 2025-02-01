import 'package:get/get.dart';

class ResponsiveHelper {
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static double width(double percentage) {
    return screenWidth * (percentage / 100);
  }
  static double height(double percentage) {
    return screenHeight * (percentage / 100);
  }
  static double fontSize(double size) {
    return screenWidth * (size / 100);
  }
}
