import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:objectid/objectid.dart';

class AddEditItemController extends GetxController {
  GlobalKey<FormState> itemFormKey = GlobalKey<FormState>();

  late TextEditingController itemTitleController;
  late TextEditingController itemDescriptionController;
  late TextEditingController itemPriceController;
  final isUpdating = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializedInputFields();
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
    final args = Get.arguments;

    // Initialize controllers with passed arguments
    itemTitleController = TextEditingController(
      text: args['name'] ?? '',
    );
    itemDescriptionController = TextEditingController(
      text: args['description'] ?? '',
    );
    itemPriceController = TextEditingController(
      text: args['price']?.toString() ?? '',
    );
  }

  Future<void> submitItem(String itemId) async {
    if (itemFormKey.currentState?.validate() ?? false) {
      var objectId = ObjectId();

      debugPrint('Generated ObjectId: ${objectId.toString()}');

      final url =
          'https://vocabulary-backend-fm6a.onrender.com/api/items/$itemId';

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
          Get.snackbar('Success', 'Item updated!');
          Get.offNamed('/home');
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
