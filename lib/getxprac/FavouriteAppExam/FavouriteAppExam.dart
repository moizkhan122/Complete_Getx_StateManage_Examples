
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/FavouriteAppExam/FavouriteAppExamController.dart';
import 'package:get/get.dart';


class FavouriteAppExam extends StatefulWidget {
   FavouriteAppExam({super.key});

  @override
  State<FavouriteAppExam> createState() => _FavouriteAppExamState();
}

class _FavouriteAppExamState extends State<FavouriteAppExam> {

  final FavouriteAppExamController controller = Get.put(FavouriteAppExamController());  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
          return ListTile(
            onTap: (){
              if (controller.favitems.contains(controller.items[index].toString())) {
                controller.removeFromlist(controller.items[index].toString());
              }
              else{
                controller.addTolist(controller.items[index].toString());
              }
            },
          leading: Text(controller.items[index],style: Theme.of(context).textTheme.headlineSmall,),
          trailing: Obx(() => Icon(Icons.favorite,color: controller.favitems.contains(controller.items[index]) ? Colors.red : Colors.grey,),)
           );
        },)
        ));
  }
}