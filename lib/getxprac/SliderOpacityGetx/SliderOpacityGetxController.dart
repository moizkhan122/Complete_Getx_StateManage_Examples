import 'package:get/get.dart';

class SliderOpacityGetxController extends GetxController {

    RxDouble opacity = 0.4.obs;

    setOpacity(double valuee){
      opacity.value = valuee;
    }
} 