import 'package:get/get.dart';

import '../controllers/searchrelatedwidgets_controller.dart';

class SearchrelatedwidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchrelatedwidgetsController>(
      () => SearchrelatedwidgetsController(),
    );
  }
}
