import 'package:get/get.dart';

import '../controllers/drawerwidget_controller.dart';

class DrawerwidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerwidgetController>(
      () => DrawerwidgetController(),
    );
  }
}
