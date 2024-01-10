import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal/controllers/meals_controller.dart';

import 'package:getx_meal/controllers/tab_controller.dart';
import 'package:getx_meal/screens/categories.dart';
import 'package:getx_meal/screens/filters.dart';
import 'package:getx_meal/screens/meals.dart';
import 'package:getx_meal/widgets/main_drawer.dart';

MealsController mealsController = Get.find();

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  void _setScreen(String identifier) {
    Get.back();
    if (identifier == 'filters') {
      Get.to(() => const FiltersScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    TabsController tabsController = Get.put(TabsController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(tabsController.selectedTabTitle.value)),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) {
            tabsController.selectIndex(index);
            tabsController.selectTabTitle();
          },
          currentIndex: tabsController.selectedTabIndex.value,
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
        Widget activePage = const CategoriesScreen();
        if (tabsController.selectedTabIndex.value == 1) {
          mealsController.selectedFavoriteMeal.value = true;
          activePage = MealsScreen(
            meals: mealsController.getFavoriteMealList,
          );
        }

        return activePage;
      }),
    );
  }
}
