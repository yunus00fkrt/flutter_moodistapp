import 'package:get/get.dart';
import 'package:flutter_moodistapp/getControllers/controller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DataController());
  }
}