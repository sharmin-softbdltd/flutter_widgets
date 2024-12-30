import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_view_separator_page_controller.dart';

class ListViewSeparatorPageView
    extends GetView<ListViewSeparatorPageController> {
  const ListViewSeparatorPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Separator Page'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: controller.dataList.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
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
