import 'package:get/get.dart';

import '../modules/add_edit_item/add_edit_item_binding.dart';
import '../modules/add_edit_item/add_edit_item_view.dart';
import '../modules/buttonrelatedwidgets/bindings/buttonrelatedwidgets_binding.dart';
import '../modules/buttonrelatedwidgets/views/buttonrelatedwidgets_view.dart';
import '../modules/button_related_widgets/button_related_widgets_binding.dart';
import '../modules/button_related_widgets/button_related_widgets_view.dart';
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
import '../modules/item_details/item_details_binding.dart';
import '../modules/item_details/item_details_view.dart';
import '../modules/layoutrelatedwidgets/bindings/layoutrelatedwidgets_binding.dart';
import '../modules/layoutrelatedwidgets/views/layoutrelatedwidgets_view.dart';
import '../modules/listviewbuilderpage/bindings/listviewbuilderpage_binding.dart';
import '../modules/listviewbuilderpage/views/listviewbuilderpage_view.dart';
import '../modules/listviewseparatorpage/bindings/listviewseparatorpage_binding.dart';
import '../modules/listviewseparatorpage/views/listviewseparatorpage_view.dart';
import '../modules/pageviewwidget/bindings/pageviewwidget_binding.dart';
import '../modules/pageviewwidget/views/pageviewwidget_view.dart';
import '../modules/products_page/products_page_binding.dart';
import '../modules/products_page/products_page_view.dart';
import '../modules/searchrelatedwidgets/bindings/searchrelatedwidgets_binding.dart';
import '../modules/searchrelatedwidgets/views/searchrelatedwidgets_view.dart';
import '../modules/textrelatedwidgets/bindings/textrelatedwidgets_binding.dart';
import '../modules/textrelatedwidgets/views/textrelatedwidgets_view.dart';
import '../modules/drawer_widget/drawer_widget_binding.dart';
import '../modules/drawer_widget/drawer_widget_view.dart';
import '../modules/form_validation/form_validation_binding.dart';
import '../modules/form_validation/form_validation_view.dart';
import '../modules/form_validation_two/form_validation_two_binding.dart';
import '../modules/form_validation_two/form_validation_two_view.dart';
import '../modules/future_builder/future_builder_binding.dart';
import '../modules/future_builder/future_builder_view.dart';
import '../modules/grid_view_builder_page/grid_view_builder_page_binding.dart';
import '../modules/grid_view_builder_page/grid_view_builder_page_view.dart';
import '../modules/grid_view_count_page/grid_view_count_page_binding.dart';
import '../modules/grid_view_count_page/grid_view_count_page_view.dart';
import '../modules/grid_view_extent_page/grid_view_extent_page_binding.dart';
import '../modules/grid_view_extent_page/grid_view_extent_page_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/layout_related_widgets/layout_related_widgets_binding.dart';
import '../modules/layout_related_widgets/layout_related_widgets_view.dart';
import '../modules/list_view_builder_page/list_view_builder_page_binding.dart';
import '../modules/list_view_builder_page/list_view_builder_page_view.dart';
import '../modules/list_view_separator_page/list_view_separator_page_binding.dart';
import '../modules/list_view_separator_page/list_view_separator_page_view.dart';
import '../modules/page_view_widget/page_view_widget_binding.dart';
import '../modules/page_view_widget/page_view_widget_view.dart';
import '../modules/search_related_widgets/search_related_widgets_binding.dart';
import '../modules/search_related_widgets/search_related_widgets_view.dart';
import '../modules/text_related_widgets/text_related_widgets_binding.dart';
import '../modules/text_related_widgets/text_related_widgets_view.dart';

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
      page: () => const TextRelatedWidgetsView(),
      binding: TextRelatedWidgetsBinding(),
    ),
    GetPage(
      name: _Paths.BUTTONRELATEDWIDGETS,
      page: () => const ButtonRelatedWidgetsView(),
      binding: ButtonRelatedWidgetsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHRELATEDWIDGETS,
      page: () => const SearchRelatedWidgetsView(),
      binding: SearchRelatedWidgetsBinding(),
    ),
    GetPage(
      name: _Paths.DRAWERWIDGET,
      page: () => const DrawerWidgetView(),
      binding: DrawerWidgetBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUTRELATEDWIDGETS,
      page: () => const LayoutRelatedWidgetsView(),
      binding: LayoutRelatedWidgetsBinding(),
    ),
    GetPage(
      name: _Paths.PAGEVIEWWIDGET,
      page: () => const PageViewWidgetView(),
      binding: PageViewWidgetBinding(),
    ),
    GetPage(
      name: _Paths.LISTVIEWBUILDERPAGE,
      page: () => const ListViewBuilderPage(),
      binding: ListViewBuilderPageBinding(),
    ),
    GetPage(
      name: _Paths.LISTVIEWSEPARATORPAGE,
      page: () => const ListViewSeparatorPageView(),
      binding: ListViewSeparatorPageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWBUILDERPAGE,
      page: () => const GridViewPageView(),
      binding: GridViewBuilderPageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWCOUNTPAGE,
      page: () => const GridViewCountPageView(),
      binding: GridViewCountPageBinding(),
    ),
    GetPage(
      name: _Paths.GRIDVIEWEXTENTPAGE,
      page: () => const GridViewExtentPageView(),
      binding: GridViewExtentPageBinding(),
    ),
    GetPage(
      name: _Paths.FORMVALIDATION,
      page: () => const FormValidationView(),
      binding: FormValidationBinding(),
    ),
    GetPage(
      name: _Paths.FORMVALIDATIONTWO,
      page: () => const FormValidationTwoView(),
      binding: FormValidationTwoBinding(),
    ),
    GetPage(
      name: _Paths.FUTUREBUILDER,
      page: () => const FutureBuilderView(),
      binding: FutureBuilderBinding(),
    ),
    GetPage(
      name: _Paths.DATE_PICKER,
      page: () => const DatePickerView(),
      binding: DatePickerBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS_PAGE,
      page: () => const ProductsPageView(),
      binding: ProductsPageBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_DETAILS,
      page: () => const ItemDetailsView(),
      binding: ItemDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_EDIT_ITEM,
      page: () => const AddEditItemView(),
      binding: AddEditItemBinding(),
    ),
  ];
}
