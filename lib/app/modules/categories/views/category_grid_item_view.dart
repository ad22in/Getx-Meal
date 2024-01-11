import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/category.dart';
import 'package:meal_getcli/app/data/repositories/filter_repository.dart';
import 'package:meal_getcli/app/routes/app_pages.dart';

class CategoryGridItemView extends GetView<FilterRepository> {
  const CategoryGridItemView({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.selectedCategory.value = category;
        Get.toNamed(Routes.MEALS, arguments: category);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
