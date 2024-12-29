import 'package:get/get.dart';

import 'futurebuilder_controller.dart';

class FuturebuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FuturebuilderController>(
      () => FuturebuilderController(),
    );
  }
}
