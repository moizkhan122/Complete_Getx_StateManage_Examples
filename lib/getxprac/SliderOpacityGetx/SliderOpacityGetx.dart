
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/SliderOpacityGetx/SliderOpacityGetxController.dart';
import 'package:get/get.dart';

class SliderOpacityGetxEx extends StatelessWidget {
   SliderOpacityGetxEx({super.key});
  
  final SliderOpacityGetxController controller = Get.put(SliderOpacityGetxController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            height: Get.height*.3,
            width: Get.width*.5,
            color: Colors.red.withOpacity(controller.opacity.value),
          ),),
          
          SizedBox(height: 10,),
          
          Obx(() => Slider(
            value: controller.opacity.value, 
            onChanged: (value) {
              controller.setOpacity(value);
            },))
        ]),
    );
  }
}