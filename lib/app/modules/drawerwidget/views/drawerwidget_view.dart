import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/drawerwidget_controller.dart';

class DrawerwidgetView extends GetView<DrawerwidgetController> {
  const DrawerwidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drawer widget',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Text(
                'Drawer',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
