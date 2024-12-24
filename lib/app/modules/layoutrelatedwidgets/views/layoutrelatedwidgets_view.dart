import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layoutrelatedwidgets_controller.dart';

class LayoutrelatedwidgetsView extends GetView<LayoutrelatedwidgetsController> {
  const LayoutrelatedwidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Related Widgets',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1: Aspect Ratio',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
