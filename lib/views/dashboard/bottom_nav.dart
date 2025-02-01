import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contollers/dashboard_controller.dart';

class Dasboard extends StatelessWidget {
  final BottomNavController controller = Get.find();

  Dasboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BottomNavigationBar(
          elevation: 1,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.publish_rounded), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2), label: 'Profile'),
          ],
        );
      },
    );
  }
}
