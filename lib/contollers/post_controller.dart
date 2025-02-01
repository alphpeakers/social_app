import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class MediaPickerController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  var selectedFile = Rxn<File>();

  Future<void> pickMedia() async {
    final file = await _picker.pickMedia();
    if (file != null) {
      selectedFile.value = File(file.path);

    }
  }
}

