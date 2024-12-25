import 'package:get/get.dart';

import '../controllers/listviewseparatorpage_controller.dart';

class ListviewseparatorpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListviewseparatorpageController>(
      () => ListviewseparatorpageController(),
    );
  }
}
