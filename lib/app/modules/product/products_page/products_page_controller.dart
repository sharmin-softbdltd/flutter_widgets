import 'package:flutter_widgets/app/models/products/get_item_list_model.dart';
import 'package:flutter_widgets/app/models/simple_status_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductsPageController extends GetxController {
  final productList = <Data>[].obs;
  final isDeleting = false.obs;
  final isDataLoaded = false.obs;
  final selectedItem = Data().obs;

  @override
  void onInit() {
    super.onInit();
    fetchItemList();
  }

  void fetchItemList() async {
    isDataLoaded.value = false;

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
    isDataLoaded.value = true;
  }

  void deleteItem(int index) async {
    final url =
        'https://vocabulary-backend-fm6a.onrender.com/api/items/${productList[index].id}'; // API endpoint

    try {
      isDeleting.value = true;
      final response = await http.delete(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
      });

      SimpleStatusModel model = simpleStatusModelFromJson(response.body);

      if (response.statusCode == 200) {
        if (model.status ?? false) {
          Get.snackbar('Success', 'Item deleted successfully!');
          productList.removeAt(index);
        } else {
          Get.snackbar('Error', 'Failed to delete item: ${response.body}');
        }
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
