import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/pageviewwidget_controller.dart';

class PageviewwidgetView extends GetView<PageviewwidgetController> {
  const PageviewwidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PageviewwidgetController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Widget'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PageView(
            onPageChanged: controller.onPageChangedUpdateIndicator,
            controller: controller.pageController,
            children: [
              CustomPage(
                'assets/images/page_view/page_view1.png',
                'Page view First Page',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
              ),
              CustomPage(
                'assets/images/page_view/page_view2.png',
                'Page View Second Page',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
              ),
              CustomPage(
                'assets/images/page_view/page_view3.png',
                'Page View Third Page',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
              ),
            ],
          ),
          Positioned(
            bottom: Get.bottomBarHeight + 25,
            left: 30,
            child: SmoothPageIndicator(
              onDotClicked: controller.onDotClickedUpdatePage,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.pink,
                dotHeight: 10,
              ),
              controller: controller.pageController,
              count: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomPage(String image, String pageTitle, String subTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Image(
            width: Get.width * 0.7,
            height: Get.height * 0.4,
            image: AssetImage(image),
          ),
          Text(
            pageTitle,
            style: Theme.of(Get.context!).textTheme.titleLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            subTitle,
            style: Theme.of(Get.context!).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
