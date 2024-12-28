import 'package:get/get.dart';

import '../controllers/formvalidationtwo_controller.dart';

class FormvalidationtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormvalidationtwoController>(
      () => FormvalidationtwoController(),
    );
  }
}
