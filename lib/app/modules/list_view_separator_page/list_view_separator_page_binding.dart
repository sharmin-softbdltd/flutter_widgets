import 'package:get/get.dart';

import 'list_view_separator_page_controller.dart';

class ListViewSeparatorPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewSeparatorPageController>(
      () => ListViewSeparatorPageController(),
    );
  }
}
