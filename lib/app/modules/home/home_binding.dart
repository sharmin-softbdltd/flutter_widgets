import 'package:get/get.dart';

import '../form_validation/form_validation_controller.dart';
import '../form_validation_two/form_validation_two_controller.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(FormValidationController());
    Get.lazyPut(() => FormValidationTwoController());
  }
}
