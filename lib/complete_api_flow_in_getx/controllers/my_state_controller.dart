import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyStateController extends GetxController{
 var count=0.obs;
 RxString name="".obs;
 increment() => count++;
}