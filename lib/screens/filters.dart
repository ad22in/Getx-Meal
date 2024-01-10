import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal/controllers/meals_controller.dart';
/* import 'package:getx_meal/screens/meals.dart';
import 'package:getx_meal/screens/tabs.dart';
import 'package:getx_meal/widgets/main_drawer.dart'; */

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MealsController mealsController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      /* drawer: MainDrawer(onSelectScreen: (identifier) {
          Get.back();
          if (identifier == 'meals') {
            Get.offAll(() => const TabsScreen());
          }
        }), */
      body: Obx(
        () => Column(
          children: [
            //GlutenFree
            SwitchListTile(
              value: mealsController.glutenFreeFilterSet.value,
              onChanged: (newValue) {
                mealsController.glutenFreeFilterSet.value = newValue;
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            //Lactose- free
            SwitchListTile(
              value: mealsController.lactoseFreeFilterSet.value,
              onChanged: (newValue) {
                mealsController.lactoseFreeFilterSet.value = newValue;
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            //Vegetarian
            SwitchListTile(
              value: mealsController.vegetarianFilterSet.value,
              onChanged: (newValue) {
                mealsController.vegetarianFilterSet.value = newValue;
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            //Vegan
            SwitchListTile(
              value: mealsController.veganFilterSet.value,
              onChanged: (newValue) {
                mealsController.veganFilterSet.value = newValue;
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include vegan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
