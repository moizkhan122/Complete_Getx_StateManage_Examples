import 'package:flutter/material.dart';
import 'package:flutter_application_1/getxprac/CounterExample/CounterExample.dart';
import 'package:flutter_application_1/getxprac/FavouriteAppExam/FavouriteAppExam.dart';
import 'package:flutter_application_1/getxprac/HeightWidthGetx/Both.dart';
import 'package:flutter_application_1/getxprac/LocalizationGetx/LocalizationGetx.dart';
import 'package:flutter_application_1/getxprac/LocalizationGetx/languagess.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/NavigationGetx.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/screen1.dart';
import 'package:flutter_application_1/getxprac/NavigationGetx/screen2.dart';
import 'package:flutter_application_1/getxprac/SliderOpacityGetx/SliderOpacityGetx.dart';
import 'package:flutter_application_1/getxprac/switchButtonExam/switchButtonExam.dart';
import 'package:get/get.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      //locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      locale:  Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  FavouriteAppExam(),
      //for getx Routes
      // getPages: [
      //   GetPage(name: '/', page: ()=>const NavigationGetx()),
      //   GetPage(name: '/screenOne', page: ()=> screen1()),
      //   GetPage(name: '/screenSecond', page: ()=> screen2()),
      // ],
    );
  }
}

