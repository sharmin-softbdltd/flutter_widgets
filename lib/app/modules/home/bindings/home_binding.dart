import 'package:get/get.dart';

import '../../formvalidation/controllers/formvalidation_controller.dart';
import '../../formvalidationtwo/formvalidationtwo_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(FormvalidationController());
    Get.lazyPut(() => FormvalidationtwoController());
  }
}
