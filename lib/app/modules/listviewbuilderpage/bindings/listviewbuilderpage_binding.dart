import 'package:get/get.dart';

import '../controllers/listviewbuilderpage_controller.dart';

class ListViewBuilderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewBuilderPageController>(
      () => ListViewBuilderPageController(),
    );
  }
}
