
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiCrubGetXExamController extends GetxController {

    final  emailController = TextEditingController().obs;
    final  passController = TextEditingController().obs;
    final RxBool loading = false.obs;

    void loginApi()async{
      loading.value = true;
      try {
              final responce = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
        'email' : emailController.value.text.toString(),
        'password' : passController.value.text.toString(),
      });
      var data = jsonDecode(responce.body);
      print(responce.statusCode);
      print(data);

      if(responce.statusCode == 200){
        loading.value = false;
        Get.snackbar('Login Succesfull','congragulations');
      }else{
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
      } catch (e) {
        loading.value = false;
        Get.snackbar('Exception',e.toString());
      }

    }
}