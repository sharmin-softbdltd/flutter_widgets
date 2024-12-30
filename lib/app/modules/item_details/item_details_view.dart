import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/utils/constrant.dart';
import 'package:get/get.dart';

import 'item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final itemName = args['name'];
    final itemDescription = args['description'];
    final date = args['date'];
    final itemPrice = args['price'];
    final itemId = args['itemId'];
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/add-edit-item', arguments: {
                'itemId': itemId,
                'date': date,
                'price': itemPrice,
                'name': itemName,
                'description': itemDescription,
              });
            },
            icon: Icon(Icons.edit),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Date : $date'),
              customHeight,
              Divider(),
              Text('Name - $itemName'),
              customHeight,
              itemDescription != null && itemDescription.isNotEmpty
                  ? Text('Description  : $itemDescription')
                  : Text('Description : No description available'),
              customHeight,
              Text('Price : $itemPrice'),
            ],
          ),
        ),
      ),
    );
  }
}
