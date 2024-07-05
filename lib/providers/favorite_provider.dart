import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final isFavoriteMeal = state.contains(meal);
    if (isFavoriteMeal) {
      // state = state.where((m) => m.id != meal.id).toList();
      state.remove(meal);
    } else {
      // state = [...state, meal];
      state.add(meal);
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
