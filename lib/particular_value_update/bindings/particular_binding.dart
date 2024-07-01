import 'package:get/get.dart';
import 'package:statemanager/particular_value_update/controllers/particular_controller.dart';

class ParticularValuesBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ParticularController>(() => ParticularController());
  }

}