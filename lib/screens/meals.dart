import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal/controllers/meals_controller.dart';
import 'package:getx_meal/models/meal.dart';
import 'package:getx_meal/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.title1, this.meals});

  final String? title1;
  final List<Meal>? meals;

  @override
  Widget build(BuildContext context) {
    MealsController mealsController = Get.find();

    String? title = mealsController.selectedCategoryTitle.value;

    Widget content = ListView.builder(
      itemCount: mealsController.availableMealsList.length,
      itemBuilder: (ctx, index) => MealItem(
        meal: mealsController.availableMealsList[index],
      ),
    );

    if (meals != null && meals!.isNotEmpty) {
      title = title1;
      content = Obx(() => ListView.builder(
            itemCount: meals!.length,
            itemBuilder: (ctx, index) => MealItem(meal: meals![index]),
          ));
    }

    if (meals != null && meals!.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Favorite meals empty',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            Text(
              'Try adding meal to favorite meals.',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      );
    }

    if (mealsController.availableMealsList.isEmpty && meals == null) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ' Nothing here',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            Text(
              'Try selecting a different category',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      );
    }
    if (meals != null) {
      return content;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
  }
}
