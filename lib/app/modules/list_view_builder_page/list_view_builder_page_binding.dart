import 'package:get/get.dart';

import 'list_view_builder_page_controller.dart';

class ListViewBuilderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewBuilderPageController>(
      () => ListViewBuilderPageController(),
    );
  }
}
