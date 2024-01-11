import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/meals/controllers/meals_controller.dart';

import '../controllers/meal_detail_controller.dart';

class MealDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealDetailController>(
      () => MealDetailController(),
    );
    Get.lazyPut<MealsController>(
      () => MealsController(),
    );
  }
}
