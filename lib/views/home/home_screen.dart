import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/routes/app_pages.dart';
import 'package:social_app/views/post/post_screen.dart';

import '../../contollers/dashboard_controller.dart';
import '../dashboard/bottom_nav.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> get screens => [
        const HomeScreenContent(),
        PostScreen(),
        const ProfileScreen(),
      ];
  final BottomNavController controller = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Dasboard(),
        body: Obx(
          () => screens[controller.selectedIndex.value],
        ));
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('Anastasia',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.notifcation);
                      },
                      icon: const Icon(Icons.notifications)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18)),
                              color: Colors.lightBlue),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 23,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'Deva',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('1 min'),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_border)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_sharp)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.comment)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
