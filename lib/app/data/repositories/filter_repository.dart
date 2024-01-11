import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/category.dart';

class FilterRepository {
  final selectedCategory = Rxn<Category>();

  //FILTERS
  final isGlutenFree = false.obs;
  final isLactoseFree = false.obs;
  final isVegetarian = false.obs;
  final isVegan = false.obs;
}
