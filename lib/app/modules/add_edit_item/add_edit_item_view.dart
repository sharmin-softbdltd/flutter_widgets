import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/constrant.dart';
import 'add_edit_item_controller.dart';

class AddEditItemView extends GetView<AddEditItemController> {
  const AddEditItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final itemId = args['itemId'];
    // final appBarTitle = args['appBarTitle'];
    //
    // final itemName = args['name'];
    // final itemDescription = args['description'];
    // final itemPrice = args['price'];

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: controller.itemFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.itemTitleController,
                      validator: (value) {
                        return controller.validateItemName('Name', value);
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.title,
                          size: 18,
                        ),
                        label: Text(
                          'Item Name',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    customHeight,
                    TextFormField(
                      controller: controller.itemDescriptionController,
                      validator: (value) {
                        return controller.validateItemDescription(
                            'Description', value);
                      },
                      minLines: 4,
                      maxLines: 8,
                      style: Theme.of(context).textTheme.bodySmall,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.description,
                          size: 16,
                        ),
                        label: Text(
                          'Description',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    customHeight,
                    TextFormField(
                      controller: controller.itemPriceController,
                      validator: (value) {
                        return controller.validateItemPrice('Price', value);
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.numberWithOptions(),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: InputDecoration(
                        counterText: '',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('Tk'),
                        ),
                        label: Text(
                          'Price',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    customHeight,
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.submitItem(itemId);
                        },
                        child: Text(
                          'Update Item',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
