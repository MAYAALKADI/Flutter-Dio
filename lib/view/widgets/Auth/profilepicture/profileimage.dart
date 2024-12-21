
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/view/widgets/Auth/profilepicture/pickiage.dart';

class ProfileImage extends StatelessWidget {
  final ProfileImageController controller = Get.put(ProfileImageController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 64,
            backgroundImage: controller.selectedImage.value != null
                ? MemoryImage(controller.selectedImage.value!)
                : const NetworkImage(
                "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y")as ImageProvider,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () => controller.pickImage(),
              icon: Icon(
                Icons.add_a_photo,
                size: 30,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ],
      )),
    );
  }
}*/
