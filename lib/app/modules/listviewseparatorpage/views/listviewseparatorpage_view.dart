import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/listviewseparatorpage_controller.dart';

class ListviewseparatorpageView
    extends GetView<ListviewseparatorpageController> {
  const ListviewseparatorpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListviewseparatorpageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ListviewseparatorpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
