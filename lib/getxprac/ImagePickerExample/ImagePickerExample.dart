
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/ImagePickerExample/ImagePickerExamController.dart';
import 'package:get/get.dart';

class ImagepickerExample extends StatelessWidget {
    ImagepickerExample({super.key});
  final ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: controller.imagePath.isNotEmpty ? 
                FileImage(File(controller.imagePath.toString()))
                : null,
              )),
            const SizedBox(height: 15,),
            TextButton(
              onPressed: (){
                controller.getImage();
              }, 
              child: Text("Picked Image",style: Theme.of(context).textTheme.displaySmall,))
      ],)),
    );
  }
}