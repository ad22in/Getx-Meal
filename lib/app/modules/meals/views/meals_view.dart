import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/meal.dart';
import 'package:meal_getcli/app/modules/meals/views/meal_item_view.dart';

import '../controllers/meals_controller.dart';

class MealsView extends GetView<MealsController> {
  const MealsView({this.meals, this.title1, Key? key}) : super(key: key);
  final String? title1;
  final List<Meal>? meals;
  @override
  Widget build(BuildContext context) {
    String? title = controller.selectedCategoryTitle.value;
    Widget content = ListView.builder(
      itemCount: controller.availableMealsList.length,
      itemBuilder: (ctx, index) => MealItemView(
        meal: controller.availableMealsList[index],
      ),
    );
    if (meals != null && meals!.isNotEmpty) {
      title = title1;
      content = Obx(
        () => ListView.builder(
          itemCount: meals!.length,
          itemBuilder: (ctx, index) => MealItemView(meal: meals![index]),
        ),
      );
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

    if (controller.availableMealsList.isEmpty && meals == null) {
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
