import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Widgets Lists',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/buttonrelatedwidgets');
              },
              hoverColor: Colors.white70,
              title: Text(
                'Buttons',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/textrelatedwidgets');
              },
              title: Text(
                'Texts',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              // onTap: () {
              //   Get.toNamed('/buttonrelatedwidgets');
              // },
              title: Text(
                'Input Fields',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/layoutrelatedwidgets');
              },
              title: Text(
                'Layout',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/searchrelatedwidgets');
              },
              title: Text(
                'Search Bar',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/pageviewwidget');
              },
              title: Text(
                'Page View',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/listviewbuilderpage');
              },
              title: Text(
                'List View Builder',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/listviewseparatorpage');
              },
              title: Text(
                'List View Separator',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/gridviewbuilderpage');
              },
              title: Text(
                'Grid View Builder ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/gridviewcountpage');
              },
              title: Text(
                'Grid View Count ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Get.toNamed('/gridviewextentpage');
              },
              title: Text(
                'Grid View Extent ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          indicatorColor: Colors.pink,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          // indicatorColor: Colors.pink,
          selectedIndex: controller.selectedIndex.value,
          height: 70,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
            NavigationDestination(
                icon: Icon(
                  Icons.add_a_photo_rounded,
                ),
                label: 'Add'),
            NavigationDestination(icon: Icon(Icons.rocket), label: 'Discover'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
          ],
        );
      }),
    );
  }
}
