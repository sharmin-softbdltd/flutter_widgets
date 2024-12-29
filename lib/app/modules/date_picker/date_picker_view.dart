import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/utils/constrant.dart';
import 'package:get/get.dart';

import 'date_picker_controller.dart';

class DatePickerView extends GetView<DatePickerController> {
  const DatePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker View'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('select Date'),
                customHeight,
                TextFormField(
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2011),
                      lastDate: DateTime(2030),
                      initialDate: DateTime.now(),
                    );

                    if (selectedDate != null) {
                      debugPrint(selectedDate.toString());
                    }
                  },
                  readOnly: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    suffixIcon: Icon(
                      Icons.clear,
                      size: 16,
                    ),
                    label: Text(
                      'Date',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
