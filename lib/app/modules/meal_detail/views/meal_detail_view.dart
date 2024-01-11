import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/meal.dart';
import 'package:meal_getcli/app/data/repositories/favourte_repository.dart';

class MealDetailView extends GetView<FavouriteRepository> {
  MealDetailView({super.key});

  final Meal meal = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
              onPressed: () {
                _showSnackbars(meal);
                controller.toggleFavourite(meal);
              },
              icon: Obx(() => Icon(controller.isFavourite(meal)
                  ? Icons.star
                  : Icons.star_border_outlined))),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              meal.imagePath,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14),
            Text(
              'Ingredients',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            for (final ingredient in meal.ingredients)
              Text(
                ingredient,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            const SizedBox(height: 14),
            Text(
              'Steps',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            for (final step in meal.steps)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                  step,
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showSnackbars(Meal meal) {
    if (controller.isFavourite(meal)) {
      Get.closeCurrentSnackbar();
      Get.snackbar(
        'Favorite Removed',
        'You removed ${meal.title} from your favorite list.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.closeCurrentSnackbar();
      Get.snackbar(
        'Favorite Added',
        'You added ${meal.title} to your favorite list.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
