import 'package:get/get.dart';

import '../controllers/textrelatedwidgets_controller.dart';

class TextrelatedwidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextrelatedwidgetsController>(
      () => TextrelatedwidgetsController(),
    );
  }
}
