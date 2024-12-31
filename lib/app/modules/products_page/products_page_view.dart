import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/modules/products_page/products_page_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../utils/constant.dart';

class ProductsPageView extends GetView<ProductsPageController> {
  const ProductsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
        centerTitle: true,
      ),
      /*body: Obx(() {
        return controller.isDeleting.value
            ? Center(
                child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.pink),
              )
            : FutureBuilder(
                future: controller.fetchItemList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.pink,
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }

                  //
                  final itemsData = snapshot.data!;
                  final gridItemCount = itemsData['data'].length;

                  //FOR DEBUG PRINT
                  debugPrint('$gridItemCount');

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 40,
                    ),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                      ),
                      itemCount: gridItemCount,
                      itemBuilder: (context, index) {
                        final itemName = itemsData['data'][index]['name'];
                        final itemPrice = itemsData['data'][index]['price'];

                        final parsedDate = DateTime.parse(
                            itemsData['data'][index]['createdAt']);
                        final date =
                            DateFormat('dd-MM-yyyy').format(parsedDate);
                        final itemDescription =
                            itemsData["data"][index]["description"];
                        final itemId = itemsData["data"][index]["_id"];
                        debugPrint('$itemId');

                        //GRID DESIGN START FROM HERE
                        return gridDesign(
                          context,
                          itemName,
                          itemPrice,
                          date,
                          itemId,
                          itemDescription: itemDescription,
                        );
                      },
                    ),
                  );
                },
              );
      }),*/
      body: itemListDesign(),
      floatingActionButton: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: Colors.pink),
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  //GRID DESIGN
  Widget gridDesign(
    BuildContext context,
    String itemName,
    int itemPrice,
    String date,
    String itemId, {
    String? itemDescription,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed('/item-details', arguments: {
              'itemId': itemId,
              'date': date,
              'price': itemPrice,
              'name': itemName,
              'description': itemDescription,
            });
          },
          child: Container(
            height: Get.height * 0.5,
            width: Get.width * 0.4,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date: $date',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  customHeight,
                  Text(
                    itemName,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Price- $itemPrice tk',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -5,
          right: 8,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 2,
                    spreadRadius: 3)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {
                showDeleteConfirmationDialog(context, itemId);
              },
              icon: Icon(
                Icons.clear,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void showDeleteConfirmationDialog(BuildContext context, String itemId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirm Delete',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.black),
          ),
          content: Text('Do you want to delete the item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'No',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.deleteItem(itemId);
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  Widget itemListDesign() {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            var data = controller.productList[index];
            final parsedDate = DateTime.tryParse(data.createdAt ?? "");
            String date = "";
            if (parsedDate != null) {
              date = DateFormat('dd-MM-yyyy').format(parsedDate);
            }
            //GRID DESIGN START FROM HERE
            return gridDesign(
              context,
              data.name ?? "",
              (data.price ?? 0).toInt(),
              date,
              data.id ?? "",
              itemDescription: data.description,
            );
          },
        ),
      );
    });
  }
}
