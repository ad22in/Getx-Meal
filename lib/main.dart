import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_getcli/app/data/repositories/favourte_repository.dart';
import 'package:meal_getcli/app/data/repositories/filter_repository.dart';

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
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(FilterRepository());
  Get.put(FavouriteRepository());

  runApp(
    GetMaterialApp(
      theme: theme,
      title: 'Application',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
