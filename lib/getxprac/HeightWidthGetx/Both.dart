import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeigthWidthGetx extends StatelessWidget {
  const HeigthWidthGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        height: Get.height *.5,
        width: Get.width *.8,
        child: Center(
          child: Text("moiz khan",style: Theme.of(context).textTheme.displayMedium,)),
      ),
    );
  }
}