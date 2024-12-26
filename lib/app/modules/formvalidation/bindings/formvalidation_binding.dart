import 'package:get/get.dart';

import '../controllers/formvalidation_controller.dart';

class FormvalidationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormvalidationController>(
      () => FormvalidationController(),
    );
  }
}
