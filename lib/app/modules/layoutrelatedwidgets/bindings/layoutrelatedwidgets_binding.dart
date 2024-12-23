import 'package:get/get.dart';

import '../controllers/layoutrelatedwidgets_controller.dart';

class LayoutrelatedwidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutrelatedwidgetsController>(
      () => LayoutrelatedwidgetsController(),
    );
  }
}
