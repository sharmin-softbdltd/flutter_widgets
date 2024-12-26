import 'package:get/get.dart';

import '../controllers/gridviewcountpage_controller.dart';

class GridviewcountpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridviewcountpageController>(
      () => GridviewcountpageController(),
    );
  }
}
