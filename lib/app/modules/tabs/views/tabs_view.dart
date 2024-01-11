import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_getcli/app/data/repositories/favourte_repository.dart';
import 'package:meal_getcli/app/modules/categories/views/categories_view.dart';
import 'package:meal_getcli/app/modules/meals/views/meals_list.dart';
import 'package:meal_getcli/app/modules/tabs/views/main_drawer_view.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller.tabController,
          tabs: const [
            Tab(icon: Icon(Icons.set_meal)),
            Tab(icon: Icon(Icons.favorite)),
          ],
        ),
        title: Obx(() => Text(controller.selectedTabTitle)),
      ),
      drawer: const MainDrawerView(),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          const CategoriesView(),
          Obx(
            () => MealsList.favourites(
              meals: Get.find<FavouriteRepository>().favourites.toList(),
            ),
          ),
        ],
      ),
    );
  }
}
