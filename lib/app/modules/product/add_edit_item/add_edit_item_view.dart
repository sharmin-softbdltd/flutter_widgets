import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constant.dart';
import 'add_edit_item_controller.dart';

class AddEditItemView extends GetView<AddEditItemController> {
  const AddEditItemView({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint('build:  ${Get.previousRoute}');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          Get.previousRoute == Routes.PRODUCTS_PAGE ? "Add Items" : "Edit Item",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                          if (Get.previousRoute == Routes.PRODUCTS_PAGE) {
                            controller.addNewItem();
                          } else {
                            controller.updateNewItem();
                          }
                        },
                        child: Text(
                          Get.previousRoute == Routes.PRODUCTS_PAGE
                              ? "Add Items"
                              : "Update Item",
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
