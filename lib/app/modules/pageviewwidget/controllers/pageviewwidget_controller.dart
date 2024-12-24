import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageviewwidgetController extends GetxController {
  // VARIABLES
  final PageController pageController = PageController();
  final Rx<int> currentIndex = 0.obs;

  void onPageChangedUpdateIndicator(index) {
    currentIndex.value = index;
  }

  void onDotClickedUpdatePage(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }
}
