
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationGetxx extends StatefulWidget {
  const LocalizationGetxx({super.key});

  @override
  State<LocalizationGetxx> createState() => _LocalizationGetxxState();
}

class _LocalizationGetxxState extends State<LocalizationGetxx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Localization with Getx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('massage'.tr),
            subtitle: Text('name'.tr),
          ),
        const SizedBox(height: 20,),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){
                  Get.updateLocale(const Locale('en_US'));
                }, 
                child:const Text("English")),
                const SizedBox(height: 10,),
                OutlinedButton(
                onPressed: ()async{
                  // final SharedPreferences prefs = await SharedPreferences.getInstance();
                  // prefs.setString('lan', 'ur');
                  // prefs.setString('country', 'PK'); 
                  Get.updateLocale(const Locale('ur_PK'));
                }, 
                child:const Text("Urdu"))
            ],)
        ]),
    );
  }
}