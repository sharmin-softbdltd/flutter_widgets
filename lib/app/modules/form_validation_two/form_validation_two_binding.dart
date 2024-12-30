import 'package:get/get.dart';

import 'form_validation_two_controller.dart';

class FormValidationTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormValidationTwoController>(
      () => FormValidationTwoController(),
    );
  }
}
