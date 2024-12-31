import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/models/products/add_item_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../models/products/get_item_list_model.dart'
    as get_item_list_model;
import '../../../routes/app_pages.dart';
import '../products_page/products_page_controller.dart';

class AddEditItemController extends GetxController {
  final get_item_list_model.Data selectedProduct =
      Get.find<ProductsPageController>().selectedItem.value;
  GlobalKey<FormState> itemFormKey = GlobalKey<FormState>();

  TextEditingController itemTitleController = TextEditingController();
  TextEditingController itemDescriptionController = TextEditingController();
  TextEditingController itemPriceController = TextEditingController();
  final isUpdating = false.obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.previousRoute != Routes.PRODUCTS_PAGE) {
      initializedInputFields();
    }
  }

  String? validateItemName(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'Name must be required';
    } else if (value.length < 5) {
      return 'Item Name is too short';
    }

    return null;
  }

  String? validateItemDescription(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'Description must be required';
    } else if (value.length < 5) {
      return 'Item Description is too short';
    } else if (value.length > 50) {
      return 'Item Description is too Long';
    }

    return null;
  }

  String? validateItemPrice(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'Price must be required';
    } else if (int.parse(value) < 0) {
      return 'Price cant be less than 0';
    }

    return null;
  }

  initializedInputFields() {
    itemTitleController.text = selectedProduct.name ?? "";
    itemDescriptionController.text = selectedProduct.description ?? "";
    itemPriceController.text = (selectedProduct.price ?? "").toString();
  }

  Future<void> addNewItem() async {
    if (itemFormKey.currentState?.validate() ?? false) {
      final url = 'https://vocabulary-backend-fm6a.onrender.com/api/items';

      final payload = jsonEncode({
        'name': itemTitleController.text,
        'description': itemDescriptionController.text,
        'price': itemPriceController.text,
      });

      try {
        isUpdating.value = true;
        final response = await http.post(
          Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: payload,
        );
        debugPrint('${response.statusCode}');

        AddItemModel model = addItemModelFromJson(response.body);
        var d = model.data;
        if (response.statusCode == 201) {
          Get.find<ProductsPageController>()
              .productList
              .add(get_item_list_model.Data(
                id: model.data?.id,
                name: model.data?.name,
                description: model.data?.description,
                price: model.data?.price,
                createdAt: model.data?.createdAt,
                v: model.data?.v,
              ));
          Get.back(result: true);
          Get.snackbar('Success', 'Item updated!');
        } else {
          Get.snackbar('Error', 'Failed to submit item: ${response.body}');
        }
      } catch (e) {
        Get.snackbar('Error', 'An error occurred: $e');
      } finally {
        isUpdating.value = false;
      }
    }
  }

  Future<void> updateNewItem() async {
    if (itemFormKey.currentState?.validate() ?? false) {
      final url =
          'https://vocabulary-backend-fm6a.onrender.com/api/items/${selectedProduct.id}';

      final payload = jsonEncode({
        'name': itemTitleController.text,
        'description': itemDescriptionController.text,
        'price': itemPriceController.text,
      });

      try {
        isUpdating.value = true;
        final response = await http.put(
          Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: payload,
        );
        debugPrint('${response.statusCode}');

        if (response.statusCode == 200) {
          selectedProduct.name = itemTitleController.text;
          selectedProduct.description = itemDescriptionController.text;
          selectedProduct.price = int.tryParse(itemPriceController.text) ?? 0;
          Get.find<ProductsPageController>().selectedItem.refresh();
          Get.find<ProductsPageController>().productList.refresh();

          Get.back();
          Get.snackbar('Success', 'Item updated!');
        } else {
          Get.snackbar('Error', 'Failed to submit item: ${response.body}');
        }
      } catch (e) {
        Get.snackbar('Error', 'An error occurred: $e');
      } finally {
        isUpdating.value = false;
      }
    }
  }
}
