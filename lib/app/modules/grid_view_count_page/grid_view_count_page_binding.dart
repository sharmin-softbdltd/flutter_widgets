import 'package:get/get.dart';

import 'grid_view_count_page_controller.dart';

class GridViewCountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridViewCountPageController>(
      () => GridViewCountPageController(),
    );
  }
}
