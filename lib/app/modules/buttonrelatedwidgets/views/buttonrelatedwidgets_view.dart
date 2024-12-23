import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/buttonrelatedwidgets_controller.dart';

class ButtonrelatedwidgetsView extends GetView<ButtonrelatedwidgetsController> {
  const ButtonrelatedwidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Button Related widgets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
