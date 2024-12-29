import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'grid_view_count_page_controller.dart';

class GridViewCountPageView extends GetView<GridViewCountPageController> {
  const GridViewCountPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Count'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            controller.dataList.length,
            (index) {
              final data = controller.dataList[index];
              return Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Image(
                      width: 80,
                      height: 50,
                      image: AssetImage(data['image']),
                    ),
                    Text(
                      data['brand'],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      data['stock'].toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
