import 'package:get/get.dart';

import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/categories_view.dart';
import '../modules/meal_detail/bindings/meal_detail_binding.dart';
import '../modules/meal_detail/views/meal_detail_view.dart';
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
      name: _Paths.MEALS,
      page: () => MealsView(),
      binding: MealsBinding(),
    ),
    GetPage(
      name: _Paths.MEAL_DETAIL,
      page: () => MealDetailView(),
      binding: MealDetailBinding(),
    ),
  ];
}
