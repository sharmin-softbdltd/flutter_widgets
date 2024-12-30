import 'package:flutter_widgets/app/modules/text_related_widgets/text_related_widgets_controller.dart';
import 'package:get/get.dart';

class TextRelatedWidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextRelatedWidgetsController>(
      () => TextRelatedWidgetsController(),
    );
  }
}
