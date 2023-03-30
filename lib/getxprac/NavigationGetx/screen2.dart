import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/NavigationGetx.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/screen1.dart';
import 'package:get/get.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           InkWell(
              onTap: (){
                Get.back();
              },
              child: Text("Back to Screen 1",style: TextStyle(color: Colors.black),)
              ),
             InkWell(
              onTap: (){
                Get.to(NavigationGetx());
              },
              child: Text("Back to home",style: TextStyle(color: Colors.black),)
              ),
          ],)),
    );
  }
}