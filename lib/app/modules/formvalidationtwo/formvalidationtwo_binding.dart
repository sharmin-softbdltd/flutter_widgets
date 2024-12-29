import 'package:get/get.dart';

import 'formvalidationtwo_controller.dart';

class FormvalidationtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormvalidationtwoController>(
      () => FormvalidationtwoController(),
    );
  }
}
