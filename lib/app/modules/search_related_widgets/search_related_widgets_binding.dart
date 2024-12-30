import 'package:flutter_widgets/app/modules/search_related_widgets/search_related_widgets_controller.dart';
import 'package:get/get.dart';

class SearchRelatedWidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchRelatedWidgetsController>(
      () => SearchRelatedWidgetsController(),
    );
  }
}
