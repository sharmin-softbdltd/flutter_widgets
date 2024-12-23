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
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
                hintStyle:
                    WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
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
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: controller.searchQuery.value,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
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
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        TextSpan(
                          text: controller.submittedQuery.value,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
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
