import 'package:flutter/material.dart';
import 'package:meal_getcli/app/data/models/meal.dart';
import 'package:meal_getcli/app/modules/meals/views/meal_item_view.dart';

class MealsList extends StatelessWidget {
  const MealsList({super.key, required this.meals})
      : titleWhenNoElements = 'Nothing here',
        subtitleWhenNoElements = 'Try selecting a different category';

  const MealsList.favourites({super.key, required this.meals})
      : titleWhenNoElements = 'No favourite meals',
        subtitleWhenNoElements = 'Try adding a meal as a favourite';

  final List<Meal> meals;
  final String titleWhenNoElements;
  final String subtitleWhenNoElements;

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              titleWhenNoElements,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            Text(
              subtitleWhenNoElements,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItemView(
        meal: meals[index],
      ),
    );
  }
}
