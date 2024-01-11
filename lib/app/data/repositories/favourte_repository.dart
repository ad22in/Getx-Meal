import 'package:get/get.dart';
import 'package:meal_getcli/app/data/models/meal.dart';

class FavouriteRepository {
  final favourites = <Meal>[].obs;

  bool isFavourite(Meal meal) => favourites.contains(meal);

  void toggleFavourite(Meal meal) {
    if (isFavourite(meal)) {
      favourites.remove(meal);
    } else {
      favourites.add(meal);
    }
  }
}
