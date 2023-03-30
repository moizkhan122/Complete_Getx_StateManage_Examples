

import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/switchButtonExam/switchButtonExamController.dart';
import 'package:get/get.dart';

class SwitchButtonExam extends StatelessWidget {
  SwitchButtonExam({super.key});
  final switchButtonExamController controller  = Get.put(switchButtonExamController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Notification"),
            Obx(() => Switch(value: controller.notification.value,
             onChanged:(value) => controller.setNotification(value),))
          ]),
      ),
    );
  }
}