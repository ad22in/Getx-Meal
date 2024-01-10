import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal/controllers/category_controller.dart';

import 'package:getx_meal/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: categoryController.getCategoryList.length,
      itemBuilder: (context, index) {
        return CategoryGridItem(
          category: categoryController.getCategoryList[index],
        );
      },
    );
  }
}
