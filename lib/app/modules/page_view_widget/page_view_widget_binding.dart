import 'package:flutter_widgets/app/modules/page_view_widget/page_view_widget_controller.dart';
import 'package:get/get.dart';

class PageViewWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageViewWidgetController>(
      () => PageViewWidgetController(),
    );
  }
}
