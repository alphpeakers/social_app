import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../contollers/post_controller.dart';

class PostScreen extends StatelessWidget {
  final MediaPickerController controller = Get.put(MediaPickerController());

  PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                MaterialButton(
                  elevation: 0,
                  color: Color(0xFF1F41BB),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Post',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'Write something....',
                  suffixIcon: IconButton(
                    onPressed: controller.pickMedia,
                    icon: Icon(
                      Icons.image_search_sharp,
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFF1F41BB))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
            SizedBox(height: 20),
            Obx(() {
              if (controller.selectedFile.value != null) {
                return Image.file(controller.selectedFile.value!,
                    width: 200, height: 200, fit: BoxFit.cover);
              } else {
                return Text("No media selected");
              }
            }),
          ],
        ),
      )),
    );
  }
}
