import 'package:get/get.dart';

class SearchRelatedWidgetsController extends GetxController {
  Rx<String> searchQuery = 'Empty'.obs;
  Rx<String> submittedQuery = 'Empty'.obs;

  void userSearchQuery(String query) {
    searchQuery.value = query;
  }

  void userSubmittedQuery(String query) {
    submittedQuery.value = query;
  }
}
