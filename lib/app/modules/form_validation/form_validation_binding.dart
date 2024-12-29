import 'package:get/get.dart';

import 'form_validation_controller.dart';

class FormValidationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormValidationController>(
      () => FormValidationController(),
    );
  }
}
