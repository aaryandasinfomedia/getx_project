import 'package:get/get.dart';
import 'package:getx_project/controller/binding_controller.dart';
import 'package:getx_project/controller/controller_class.dart';

class AllControllerBinding implements Bindings {


  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.put<BindingController>(BindingController());
  }

}