import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal/controllers/meals_controller.dart';
import 'package:getx_meal/models/category.dart';
import 'package:getx_meal/screens/meals.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MealsController mealsController = Get.find();

        
        mealsController.selectTitle(category.title);
        mealsController.selectId(category.id);
        mealsController.selectCategory();
        mealsController.selectAvailableMealsList();
        
        Get.to(() => const MealsScreen());
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
