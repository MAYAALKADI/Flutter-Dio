/*import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageController extends GetxController {
  Rx<Uint8List?> selectedImage = Rx<Uint8List?>(null);

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      selectedImage.value = await file.readAsBytes();
    }
  }
}*/