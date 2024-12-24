import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/searchrelatedwidgets_controller.dart';

class SearchrelatedwidgetsView extends GetView<SearchrelatedwidgetsController> {
  const SearchrelatedwidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchrelatedwidgetsController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search related widgets',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                onChanged: controller.userSearchQuery,
                onSubmitted: controller.userSubmittedQuery,
                elevation: WidgetStatePropertyAll(2),
                leading: Icon(Icons.search),
                hintText: 'search..',
                hintStyle: WidgetStatePropertyAll(Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () {
                  return RichText(
                    text: TextSpan(
                      text: 'User\'s Search Query = ',
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                          text: controller.searchQuery.value,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () {
                  return RichText(
                    text: TextSpan(
                      text: 'User\'s Submitted Query = ',
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                          text: controller.submittedQuery.value,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
