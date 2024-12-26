import 'package:get/get.dart';

import '../controllers/gridviewextentpage_controller.dart';

class GridviewextentpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridviewextentpageController>(
      () => GridviewextentpageController(),
    );
  }
}
