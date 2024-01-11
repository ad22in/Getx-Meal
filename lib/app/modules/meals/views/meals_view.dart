import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/category.dart';
import 'package:meal_getcli/app/modules/meals/views/meals_list.dart';

import '../controllers/meals_controller.dart';

class MealsView extends GetView<MealsController> {
  MealsView({super.key});

  final Category category = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: MealsList(meals: controller.filteredMealsList),
    );
  }
}
