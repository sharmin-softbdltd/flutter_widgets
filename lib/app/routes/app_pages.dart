import 'package:get/get.dart';

import '../modules/buttonrelatedwidgets/bindings/buttonrelatedwidgets_binding.dart';
import '../modules/buttonrelatedwidgets/views/buttonrelatedwidgets_view.dart';
import '../modules/drawerwidget/bindings/drawerwidget_binding.dart';
import '../modules/drawerwidget/views/drawerwidget_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layoutrelatedwidgets/bindings/layoutrelatedwidgets_binding.dart';
import '../modules/layoutrelatedwidgets/views/layoutrelatedwidgets_view.dart';
import '../modules/searchrelatedwidgets/bindings/searchrelatedwidgets_binding.dart';
import '../modules/searchrelatedwidgets/views/searchrelatedwidgets_view.dart';
import '../modules/textrelatedwidgets/bindings/textrelatedwidgets_binding.dart';
import '../modules/textrelatedwidgets/views/textrelatedwidgets_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEXTRELATEDWIDGETS,
      page: () => const TextrelatedwidgetsView(),
      binding: TextrelatedwidgetsBinding(),
    ),
    GetPage(
      name: _Paths.BUTTONRELATEDWIDGETS,
      page: () => const ButtonrelatedwidgetsView(),
      binding: ButtonrelatedwidgetsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHRELATEDWIDGETS,
      page: () => const SearchrelatedwidgetsView(),
      binding: SearchrelatedwidgetsBinding(),
    ),
    GetPage(
      name: _Paths.DRAWERWIDGET,
      page: () => const DrawerwidgetView(),
      binding: DrawerwidgetBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUTRELATEDWIDGETS,
      page: () => const LayoutrelatedwidgetsView(),
      binding: LayoutrelatedwidgetsBinding(),
    ),
  ];
}
