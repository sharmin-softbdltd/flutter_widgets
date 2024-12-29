import 'package:get/get.dart';

import 'date_picker_controller.dart';

class DatePickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatePickerController>(
      () => DatePickerController(),
    );
  }
}
