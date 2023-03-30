
import 'package:get/get.dart';

class switchButtonExamController extends GetxController {

    RxBool notification = false.obs;

    void setNotification(valuee){
      notification.value = valuee;
    }
} 