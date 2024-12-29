import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        centerTitle: true,
      ),
      drawer: drawerDesign(context),
      body: pagesDesign(),
      bottomNavigationBar: navigationDesign(),
    );
  }

  Widget drawerDesign(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'Widgets Lists',
              style: Theme.of(context).textTheme.titleMedium,
              // style: Get.textTheme.titleMedium,
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
            onTap: () {
              Get.toNamed('/formvalidation');
            },
            title: Text(
              'Form Validation',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListTile(
            dense: true,
            onTap: () {
              Get.toNamed('/formvalidationtwo');
            },
            title: Text(
              'Form Validation 2',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          // ListTile(
          //   dense: true,
          //   onTap: () {
          //     Get.toNamed('/layoutrelatedwidgets');
          //   },
          //   title: Text(
          //     'Layout',
          //     style: Theme.of(context).textTheme.titleMedium,
          //   ),
          // ),
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
          ListTile(
            dense: true,
            onTap: () {
              Get.toNamed('/futurebuilder');
            },
            title: Text(
              'Future Builder',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListTile(
            dense: true,
            onTap: () {
              Get.toNamed('/date-picker');
            },
            title: Text(
              'Date Picker',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget pagesDesign() {
    return Obx(
      () {
        // return controller.screens[controller.selectedIndex.value];
        int index = controller.selectedIndex.value;
        debugPrint("Hello: $index");
        if (index == 0) {
          return Center(
            child: Text('Home'),
          );
        }
        if (index == 1) {
          return Center(
            child: Text('Shop'),
          );
        }
        if (index == 2) {
          return Center(
            child: Text('Add'),
          );
        }
        if (index == 3) {
          return Center(
            child: Text('Discover'),
          );
        }
        if (index == 4) {
          return Center(
            child: Text('Settings'),
          );
        }
        return Center(
          child: Text('Null'),
        );
      },
    );
  }

  Widget navigationDesign() {
    return Obx(
      () {
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
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.add_a_photo_rounded,
                ),
                label: 'Add'),
            NavigationDestination(
              icon: Icon(Icons.rocket),
              label: 'Discover',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        );
      },
    );
  }
}
