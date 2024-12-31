import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/models/products/get_item_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductsPageController extends GetxController {
  final isDeleting = false.obs;
  final productList = <Data>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItemList();
  }

  void fetchItemList() async {
    final response = await http.get(
        Uri.parse('https://vocabulary-backend-fm6a.onrender.com/api/items'));

    // final data = weatherDataModelFromJson(response.body.toString());
    // final data = jsonDecode(response.body);

    GetItemListModel model = getItemListModelFromJson(response.body);
    if (model.status ?? false) {
      productList.value = model.data ?? [];
    } else {
      Get.snackbar('Failed',
          model.message ?? "Something went wrong. Please try again later.");
    }
  }

  Future<void> deleteItem(String itemId) async {
    final url =
        'https://vocabulary-backend-fm6a.onrender.com/api/items/$itemId'; // API endpoint

    try {
      isDeleting.value = true;
      final response = await http.delete(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
      });

      if (response.statusCode == 200) {
        Navigator.of(Get.context!).pop(); // Close the dialog

        Get.snackbar('Success', 'Item deleted successfully!');
        Get.back(); // Navigate back to the previous page
      } else {
        Get.snackbar('Error', 'Failed to delete item: ${response.body}');
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e');
    } finally {
      isDeleting.value = false;
    }
  }
}
