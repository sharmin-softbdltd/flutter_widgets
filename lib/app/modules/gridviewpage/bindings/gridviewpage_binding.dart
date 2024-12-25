import 'package:get/get.dart';

import '../controllers/gridviewpage_controller.dart';

class GridviewpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridviewpageController>(
      () => GridviewpageController(),
    );
  }
}
