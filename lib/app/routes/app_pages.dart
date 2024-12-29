import 'package:get/get.dart';

import '../modules/buttonrelatedwidgets/bindings/buttonrelatedwidgets_binding.dart';
import '../modules/buttonrelatedwidgets/views/buttonrelatedwidgets_view.dart';
import '../modules/date_picker/date_picker_binding.dart';
import '../modules/date_picker/date_picker_view.dart';
import '../modules/drawerwidget/bindings/drawerwidget_binding.dart';
import '../modules/drawerwidget/views/drawerwidget_view.dart';
import '../modules/formvalidation/bindings/formvalidation_binding.dart';
import '../modules/formvalidation/views/formvalidation_view.dart';
import '../modules/formvalidationtwo/formvalidationtwo_binding.dart';
import '../modules/formvalidationtwo/formvalidationtwo_view.dart';
import '../modules/futurebuilder/futurebuilder_binding.dart';
import '../modules/futurebuilder/futurebuilder_view.dart';
import '../modules/gridviewbuilderpage/bindings/gridviewbuilderpage_binding.dart';
import '../modules/gridviewbuilderpage/views/gridviewbuilderpage_view.dart';
import '../modules/gridviewcountpage/bindings/gridviewcountpage_binding.dart';
import '../modules/gridviewcountpage/views/gridviewcountpage_view.dart';
import '../modules/gridviewextentpage/bindings/gridviewextentpage_binding.dart';
import '../modules/gridviewextentpage/views/gridviewextentpage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layoutrelatedwidgets/bindings/layoutrelatedwidgets_binding.dart';
import '../modules/layoutrelatedwidgets/views/layoutrelatedwidgets_view.dart';
import '../modules/listviewbuilderpage/bindings/listviewbuilderpage_binding.dart';
import '../modules/listviewbuilderpage/views/listviewbuilderpage_view.dart';
import '../modules/listviewseparatorpage/bindings/listviewseparatorpage_binding.dart';
import '../modules/listviewseparatorpage/views/listviewseparatorpage_view.dart';
import '../modules/pageviewwidget/bindings/pageviewwidget_binding.dart';
import '../modules/pageviewwidget/views/pageviewwidget_view.dart';
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
    GetPage(
      name: _Paths.PAGEVIEWWIDGET,
      page: () => const PageviewwidgetView(),
      binding: PageviewwidgetBinding(),
    ),
    GetPage(
      name: _Paths.LISTVIEWBUILDERPAGE,
      page: () => const ListViewBuilderPage(),
      binding: ListViewBuilderPageBinding(),
    ),
    GetPage(
      name: _Paths.LISTVIEWSEPARATORPAGE,
      page: () => const ListviewseparatorpageView(),
      binding: ListviewseparatorpageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWBUILDERPAGE,
      page: () => const GridViewPageView(),
      binding: GridViewBuilderPageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWCOUNTPAGE,
      page: () => const GridviewcountpageView(),
      binding: GridviewcountpageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWEXTENTPAGE,
      page: () => const GridviewextentpageView(),
      binding: GridviewextentpageBinding(),
    ),
    GetPage(
      name: _Paths.FORMVALIDATION,
      page: () => const FormvalidationView(),
      binding: FormvalidationBinding(),
    ),
    GetPage(
      name: _Paths.FORMVALIDATIONTWO,
      page: () => const FormvalidationtwoView(),
      binding: FormvalidationtwoBinding(),
    ),
    GetPage(
      name: _Paths.FUTUREBUILDER,
      page: () => const FuturebuilderView(),
      binding: FuturebuilderBinding(),
    ),
    GetPage(
      name: _Paths.DATE_PICKER,
      page: () => const DatePickerView(),
      binding: DatePickerBinding(),
    ),
  ];
}
