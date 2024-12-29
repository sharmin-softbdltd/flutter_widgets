import 'package:get/get.dart';

import 'grid_view_builder_page_controller.dart';

class GridViewBuilderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridViewBuilderPageController>(
      () => GridViewBuilderPageController(),
    );
  }
}
