import 'package:get/get.dart';

import 'grid_view_extent_page_controller.dart';

class GridViewExtentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridViewExtentPageController>(
      () => GridViewExtentPageController(),
    );
  }
}
