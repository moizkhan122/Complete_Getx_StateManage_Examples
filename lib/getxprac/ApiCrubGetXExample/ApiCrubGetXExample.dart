
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/ApiCrubGetXExample/ApiCrubGetXExamController.dart';
import 'package:get/get.dart';

class ApiCrubGetXExample extends StatelessWidget {
   ApiCrubGetXExample({super.key});

   final ApiCrubGetXExamController controller = Get.put(ApiCrubGetXExamController());
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                  hintText: "Email"
                ),
              ),
              SizedBox(height: 25,),
              TextFormField(
                controller: controller.passController.value,
                decoration: InputDecoration(
                  hintText: "Password"
                ),
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  controller.loginApi();
                },
                child: Obx(() => controller.loading.value ? const CircularProgressIndicator()
                : Container(
                  height: 50,
                  color: Colors.grey,
                  child: Center(child: Text("Login",style: Theme.of(context).textTheme.headlineSmall,)),
                ),)
              )
        ]),
      ),
    );
  }
}