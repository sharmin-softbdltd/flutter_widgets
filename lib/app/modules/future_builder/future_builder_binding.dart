import 'package:get/get.dart';

import 'future_builder_controller.dart';

class FutureBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FutureBuilderController>(
      () => FutureBuilderController(),
    );
  }
}
