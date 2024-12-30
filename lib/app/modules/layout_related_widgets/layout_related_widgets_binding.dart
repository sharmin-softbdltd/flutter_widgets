import 'package:get/get.dart';

import 'layout_related_widgets_controller.dart';

class LayoutRelatedWidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutRelatedWidgetsController>(
      () => LayoutRelatedWidgetsController(),
    );
  }
}
