import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/meals/controllers/meals_controller.dart';

import '../controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(
      () => CategoriesController(),
    );
    Get.lazyPut<MealsController>(
      () => MealsController(),
    );
  }
}
