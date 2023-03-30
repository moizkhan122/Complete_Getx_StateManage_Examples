import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPrac extends StatefulWidget {
  const SnackBarPrac({super.key});

  @override
  State<SnackBarPrac> createState() => _SnackBarPracState();
}

class _SnackBarPracState extends State<SnackBarPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Colors.greenAccent,
              child: ListTile(
                title:const Text("Show Getx Dialog Alert"),
                subtitle:const Text("Muhammad Moiz Khan"),
                onTap: (){
                  Get.defaultDialog(
                    titlePadding:const EdgeInsets.only(top: 10),
                    contentPadding:const EdgeInsets.all(15),
                    title: "Moiz Khan",
                    middleText: "Hello Moiz khan",
                    backgroundColor: Colors.greenAccent,
                    confirm: TextButton(
                      onPressed: (){}, 
                      child:const Text("Yes")),
                    cancel: TextButton(
                      onPressed: (){
                        Get.back();
                      }, 
                      child:const Text("No")),
                  );
                },
                ),
                ),
                Card(
              color: Colors.greenAccent,
              child: ListTile(
                title:const Text("Show Getx Botom sheet"),
                subtitle:const Text("Muhammad Moiz Khan"),
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                            ListTile(
                            leading: const Icon(Icons.light_mode),
                            title: const Text("light theme"),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                           ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("dark theme"),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ]),
                    ));
                },
                ),
                )
          ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
            snackPosition: SnackPosition.BOTTOM,
            "Name", "Moiz");
        })
    );
  }
}