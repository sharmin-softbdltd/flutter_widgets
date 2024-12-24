import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Shop'),
    ),
    Center(
      child: Text('Add'),
    ),
    Center(
      child: Text('Discover'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
}
