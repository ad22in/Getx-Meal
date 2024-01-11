import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/modules/tabs/views/filters_view.dart';

class MainDrawerView extends GetView {
  const MainDrawerView({super.key});

  void onSelectScreen(bool shouldGoToFilters) {
    Get.back();
    if (shouldGoToFilters) {
      Get.to(const FiltersView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                  'Cooking up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          _buildButtonTile(
            context,
            Icons.restaurant,
            'Meals',
            () => onSelectScreen(false),
          ),
          _buildButtonTile(
            context,
            Icons.settings,
            'Filters',
            () => onSelectScreen(true),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonTile(
    BuildContext context,
    IconData icon,
    String text,
    void Function() onTap,
  ) =>
      ListTile(
        leading: Icon(
          icon,
          size: 26,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        title: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
              ),
        ),
        onTap: onTap,
      );
}
