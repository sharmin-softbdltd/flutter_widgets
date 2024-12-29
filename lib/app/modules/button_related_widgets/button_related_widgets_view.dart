import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_related_widgets_controller.dart';

class ButtonRelatedWidgetsView extends GetView<ButtonRelatedWidgetsController> {
  const ButtonRelatedWidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ButtonRelatedWidgetsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Button Related Widgets',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ELEVATED BUTTON
              Text(
                '1: Elevated Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.elevatedButtonText.value =
                          'Elevated button clicked';
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      elevation: 7,
                    ),
                    child: Obx(() {
                      return Text(controller.elevatedButtonText.value);
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.grey,
                      disabledForegroundColor: Colors.white,
                    ),
                    child: Text('Disabled '),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // TEXT BUTTON
              Text(
                '2: Text Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(14)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white),
                onPressed: () {
                  controller.textButtonText.value = 'Text Button Clicked';
                },
                child: Obx(() {
                  return Text(controller.textButtonText.value);
                }),
              ),
              SizedBox(
                height: 20,
              ),
              // OUTLINED BUTTON
              Text(
                '3: OutLined Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.purple),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.purple),
                child: Text('Outlined button'),
              ),
              SizedBox(
                height: 20,
              ),
              // ICON BUTTON
              Text(
                '4: Icon Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconButton(
                    iconSize: 20,
                    color: Colors.white,
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.purple, elevation: 8),
                    tooltip: 'Press to change the icon',
                    hoverColor: Colors.red,
                    icon: Icon(Icons.add),
                    onPressed: () {
                      controller.iconButtonText.value++;
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Obx(() {
                    return Text(
                      controller.iconButtonText.value < 0
                          ? '0'
                          : controller.iconButtonText.value.toString(),
                    );
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    iconSize: 20,
                    color: Colors.white,
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.purple, elevation: 8),
                    tooltip: 'Press to change the icon',
                    hoverColor: Colors.red,
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      controller.iconButtonText.value--;
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // FLOATING ACTION BUTTON
              Text(
                '5: Floating Action Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.ad_units),
              ),
              SizedBox(
                height: 20,
              ),
              // FILLED BUTTON
              Text(
                '6: Filled Button',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {},
                child: Text('Filled button'),
              ),
              SizedBox(
                height: 20,
              ),
              // FILLED BUTTON.TONAL BUTTON
              Text(
                '7: Filled Button.tonal',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: Text('Filled Button.tonal'),
              ),
              SizedBox(
                height: 20,
              ),
              // SEGMENTED BUTTON FOR SINGLE SELECTION
              Text(
                '8: Segmented Button (Single Selection)',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Obx(() {
                return SegmentedButton(
                  showSelectedIcon: false,
                  style: SegmentedButton.styleFrom(
                      selectedBackgroundColor: Colors.purple,
                      selectedForegroundColor: Colors.white),
                  segments: <ButtonSegment<String>>[
                    ButtonSegment<String>(
                      value: 'xs',
                      label: Text('xs'),
                    ),
                    ButtonSegment<String>(
                      value: 'sm',
                      label: Text(
                        'small',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ButtonSegment<String>(
                      value: 'md',
                      label: Text(
                        'medium',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ButtonSegment<String>(
                      value: 'lg',
                      label: Text('large'),
                    ),
                    ButtonSegment<String>(
                      value: 'xl',
                      label: Text(
                        'extra large',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  selected: controller.singleSelected,
                  onSelectionChanged: controller.updateSingleSelection,
                );
              }),
              SizedBox(
                height: 20,
              ),
              // SEGMENTED BUTTON FOR MULTIPLE SELECTION
              Text(
                '9: Segmented Button (Multi Selections)',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Obx(() {
                return SegmentedButton(
                  style: SegmentedButton.styleFrom(
                    iconSize: 8,
                    iconColor: Colors.white,
                    selectedForegroundColor: Colors.white,
                    selectedBackgroundColor: Colors.purple,
                  ),
                  multiSelectionEnabled: true,
                  segments: <ButtonSegment<String>>[
                    ButtonSegment<String>(
                      value: 'xs',
                      label: Text('xs'),
                    ),
                    ButtonSegment<String>(
                      value: 'sm',
                      label: Text(
                        'small',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ButtonSegment<String>(
                      value: 'md',
                      label: Text(
                        'medium',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ButtonSegment<String>(
                      value: 'lg',
                      label: Text('large'),
                    ),
                    ButtonSegment<String>(
                      value: 'xl',
                      label: Text(
                        'extra large',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  selected: controller.multiSelected,
                  onSelectionChanged: controller.updateMultipleSelection,
                );
              }),

              SizedBox(
                height: 90,
              )
            ],
          ),
        ),
      ),
    );
  }
}
