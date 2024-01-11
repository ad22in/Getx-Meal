import 'package:get/get.dart';

import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/categories_view.dart';
import '../modules/filters/bindings/filters_binding.dart';
import '../modules/filters/views/filters_view.dart';
import '../modules/meals/bindings/meals_binding.dart';
import '../modules/meals/views/meals_view.dart';
import '../modules/tabs/bindings/tabs_binding.dart';
import '../modules/tabs/views/tabs_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TABS;

  static final routes = [
    GetPage(
      name: _Paths.TABS,
      page: () => const TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => const CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.FILTERS,
      page: () => const FiltersView(),
      binding: FiltersBinding(),
    ),
    GetPage(
      name: _Paths.MEALS,
      page: () => const MealsView(),
      binding: MealsBinding(),
    ),
  ];
}
