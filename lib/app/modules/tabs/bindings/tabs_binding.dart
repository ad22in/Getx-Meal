import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/meals/controllers/meals_controller.dart';

import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
    Get.lazyPut<MealsController>(
      () => MealsController(),
    );
  }
}
