import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/products/get_item_list_model.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/constant.dart';
import '../products_page/products_page_controller.dart';
import 'item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final Data selectedProduct =
          Get.find<ProductsPageController>().selectedItem.value;
      return Scaffold(
        appBar: AppBar(
          title: Text(selectedProduct.name ?? ""),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.ADD_EDIT_ITEM);
              },
              icon: Icon(Icons.edit),
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date : ${selectedProduct.createdAt}'),
                customHeight,
                Divider(),
                Text('Name - ${selectedProduct.name}'),
                customHeight,
                selectedProduct.description != null &&
                        (selectedProduct.description?.isNotEmpty ?? false)
                    ? Text('Description  : ${selectedProduct.description}')
                    : Text('Description : No description available'),
                customHeight,
                Text('Price : ${selectedProduct.price}'),
              ],
            ),
          ),
        ),
      );
    });
  }
}
