import 'package:get/get.dart';

class CounterExamController extends GetxController {

    RxInt counter = 0.obs;

    void incrementCounter(){
      counter.value++;
      print(counter.value);
    }  
}