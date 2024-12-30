import 'package:get/get.dart';

import 'drawer_widget_controller.dart';

class DrawerWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerWidgetController>(
      () => DrawerWidgetController(),
    );
  }
}
