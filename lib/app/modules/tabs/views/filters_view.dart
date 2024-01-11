import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/data/repositories/filter_repository.dart';

class FiltersView extends GetView<FilterRepository> {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      body: Obx(
        () => Column(
          children: [
            _buildSwitchTile(
              context,
              controller.isGlutenFree,
              'Gluten-free',
              'Only include gluten-free meals.',
            ),
            _buildSwitchTile(
              context,
              controller.isLactoseFree,
              'Lactose-free',
              'Only include lactose-free meals.',
            ),
            _buildSwitchTile(
              context,
              controller.isVegetarian,
              'Vegetarian',
              'Only include vegetarian meals.',
            ),
            _buildSwitchTile(
              context,
              controller.isVegan,
              'Vegan',
              'Only include vegan meals.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    BuildContext context,
    RxBool value,
    String title,
    String subtitle,
  ) =>
      SwitchListTile(
        value: value.value,
        onChanged: (newValue) => value.value = newValue,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        activeColor: Theme.of(context).colorScheme.tertiary,
        contentPadding: const EdgeInsets.only(
          left: 34,
          right: 22,
        ),
      );
}
