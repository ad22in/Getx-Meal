import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_getcli/app/modules/categories/controllers/categories_controller.dart';
import 'package:meal_getcli/app/modules/meals/controllers/meals_controller.dart';
import 'app/routes/app_pages.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
void main() {
  Get.put(MealsController());
  Get.put(CategoriesController());
  runApp(
    GetMaterialApp(
      theme: theme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
