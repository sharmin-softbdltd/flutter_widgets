import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductsPageController extends GetxController {
  final isDeleting = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchItemDetails();
  }

  Future fetchItemDetails() async {
    try {
      final response = await http.get(
          Uri.parse('https://vocabulary-backend-fm6a.onrender.com/api/items'));

      // final data = weatherDataModelFromJson(response.body.toString());

      final data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        debugPrint('error');
        throw 'Failed to load data, status code: ${response.statusCode}';
      }

      return data;
    } catch (e) {
      throw e.toString();
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
