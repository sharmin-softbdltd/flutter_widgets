import 'package:get/get.dart';

import '../controllers/gridviewbuilderpage_controller.dart';

class GridViewBuilderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridViewBuilderPageController>(
      () => GridViewBuilderPageController(),
    );
  }
}
