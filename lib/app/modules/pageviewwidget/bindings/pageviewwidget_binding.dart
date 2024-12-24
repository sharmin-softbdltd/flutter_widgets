import 'package:get/get.dart';

import '../controllers/pageviewwidget_controller.dart';

class PageviewwidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageviewwidgetController>(
      () => PageviewwidgetController(),
    );
  }
}
