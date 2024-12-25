import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/gridviewpage_controller.dart';

class GridviewpageView extends GetView<GridviewpageController> {
  const GridviewpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridviewpageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GridviewpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
