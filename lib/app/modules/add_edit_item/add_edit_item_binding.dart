import 'package:get/get.dart';

import 'add_edit_item_controller.dart';

class AddEditItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEditItemController>(
      () => AddEditItemController(),
    );
  }
}
