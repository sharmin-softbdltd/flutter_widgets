import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/listviewbuilderpage_controller.dart';

class ListViewBuilderPage extends GetView<ListViewBuilderPageController> {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListViewBuilderPageController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) {
          final data = controller.dataList[index];
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Card(
                  child: Image.asset(
                    data['image'],
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['title'],
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      'Brand - ${data['brand'].toString()}',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      'Stock - ${data['stock'].toString()}',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
