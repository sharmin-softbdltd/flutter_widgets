import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/gridviewextentpage_controller.dart';

class GridviewextentpageView extends GetView<GridviewextentpageController> {
  const GridviewextentpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Extent'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: GridView.extent(
          maxCrossAxisExtent: 250,
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
                      data['title'],
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 16),
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
