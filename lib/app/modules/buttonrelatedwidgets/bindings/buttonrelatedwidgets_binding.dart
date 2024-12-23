import 'package:get/get.dart';

import '../controllers/buttonrelatedwidgets_controller.dart';

class ButtonrelatedwidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonrelatedwidgetsController>(
      () => ButtonrelatedwidgetsController(),
    );
  }
}
