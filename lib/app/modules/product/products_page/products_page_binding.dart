import 'package:flutter_widgets/app/modules/product/products_page/products_page_controller.dart';
import 'package:get/get.dart';

class ProductsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsPageController>(
      () => ProductsPageController(),
    );
  }
}
