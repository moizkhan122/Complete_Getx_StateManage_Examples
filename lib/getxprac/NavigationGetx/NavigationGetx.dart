

import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/screen1.dart';
import 'package:get/get.dart';

class NavigationGetx extends StatefulWidget {
  const NavigationGetx({super.key});

  @override
  State<NavigationGetx> createState() => _NavigationGetxState();
}

class _NavigationGetxState extends State<NavigationGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                //Get.to(screen1());
                Get.toNamed('/screenOne',arguments: [
                  'moiz',
                ]);
              },
              child: Text("Go to Screen 1",style: TextStyle(color: Colors.black),)
              ),
          ],)
          ),
    );
  }
}