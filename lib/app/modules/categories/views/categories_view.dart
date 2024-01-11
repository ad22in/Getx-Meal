import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/categories/views/category_grid_item_view.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: controller.categoryList.length,
      itemBuilder: (context, index) {
        return CategoryGridItemView(
          category: controller.categoryList[index],
        );
      },
    );
  }
}
