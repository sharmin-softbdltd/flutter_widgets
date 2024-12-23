import 'package:get/get.dart';

class SearchrelatedwidgetsController extends GetxController {
  //TODO: Implement SearchrelatedwidgetsController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }
  //
  // void increment() => count.value++;

  Rx<String> searchQuery = 'Empty'.obs;
  Rx<String> submittedQuery = 'Empty'.obs;

  void userSearchQuery(String query) {
    searchQuery.value = query;
  }

  void userSubmittedQuery(String query) {
    submittedQuery.value = query;
  }
}
