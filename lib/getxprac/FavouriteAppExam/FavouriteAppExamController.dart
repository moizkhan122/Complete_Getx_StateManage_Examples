

import 'package:get/get.dart';

class FavouriteAppExamController extends GetxController {
  
       RxList<String> items = ["moiz","haziq","ameen"].obs;
       RxList favitems = [].obs;

     addTolist(String value){
     favitems.add(value); 
    }
     removeFromlist(String value){
     favitems.remove(value); 
    }
}