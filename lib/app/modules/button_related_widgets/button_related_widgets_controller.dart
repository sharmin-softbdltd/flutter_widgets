import 'package:get/get.dart';

class ButtonRelatedWidgetsController extends GetxController {
  // final count = 0.obs;
  //
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

  final Rx<String> elevatedButtonText = 'Elevated Button'.obs;
  final Rx<String> textButtonText = 'Text Button'.obs;
  final Rx<int> iconButtonText = 0.obs;

  RxSet<String> singleSelected = {'sm'}.obs;
  RxSet<String> multiSelected = {'sm', 'xs'}.obs;

  void updateSingleSelection(Set<String> newSelection) {
    singleSelected.assignAll(newSelection);
  }

  void updateMultipleSelection(Set<String> newSelection) {
    multiSelected.assignAll(newSelection);
  }
}
