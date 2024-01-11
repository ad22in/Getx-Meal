import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/categories/views/categories_view.dart';
import 'package:meal_getcli/app/modules/meals/controllers/meals_controller.dart';
import 'package:meal_getcli/app/modules/meals/views/meals_view.dart';
import 'package:meal_getcli/app/modules/tabs/views/main_drawer_view.dart';
import 'package:meal_getcli/app/routes/app_pages.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);
  void _setScreen(String identifier) {
    Get.back();
    if (identifier == 'filters') {
      Get.toNamed(Routes.FILTERS);
    }
  }

  @override
  Widget build(BuildContext context) {
    MealsController mealsController = Get.find();
    /* return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.selectedTabTitle.value)),
      ),
      drawer: MainDrawerView(
        onSelectScreen: _setScreen,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) {
            controller.selectIndex(index);
            controller.selectTabTitle();
          },
          currentIndex: controller.selectedTabIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.set_meal),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        ),
      ),
      body: Obx(() {
        Widget activePage = const CategoriesView();
        if (controller.selectedTabIndex.value == 1) {
          mealsController.selectedFavoriteMeal.value = true;
          activePage = MealsView(
            meals: mealsController.getFavoriteMealList,
          );
        }

        return activePage;
      }),
    ); */

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
