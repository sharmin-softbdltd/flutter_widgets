import 'package:get/get.dart';

import 'item_details_controller.dart';

class ItemDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemDetailsController>(
      () => ItemDetailsController(),
    );
  }
}
