import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/screen2.dart';
import 'package:get/get.dart';

class screen1 extends StatefulWidget {
   screen1({super.key, this.name});
 var name;
  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Get.to(screen2());
              },
              child: Text("Go to Screen 2 "+Get.arguments[0],style: TextStyle(color: Colors.black),)
              ),
          ],)),
    );
  }
}