import 'package:get/get.dart';

import 'button_related_widgets_controller.dart';

class ButtonRelatedWidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonRelatedWidgetsController>(
      () => ButtonRelatedWidgetsController(),
    );
  }
}
