import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/CounterExample/CounterExampleControler.dart';
import 'package:get/get.dart';

class CounterExample extends StatelessWidget {
   CounterExample({super.key});
  final CounterExamController  controller = Get.put(CounterExamController());
  @override
  Widget build(BuildContext context) {
    print("rebuuld");
    return Scaffold(
      body: Center(
        child: Obx(
          (){
          return Text(controller.counter.toString(),style: Theme.of(context).textTheme.displayMedium,);
        }) 
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
        child:const Icon(Icons.add),),
    );
  }
}