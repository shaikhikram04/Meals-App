import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleMealFavoriteStatus(Meal meal) {
    final isFavoriteMeal = state.contains(meal);
    if (isFavoriteMeal) {
      state = state.where((m) => m.id != meal.id).toList();
      //! Update state is not allowed in this package 
      //! we have to reassign it to create a new data
      //* state.remove(meal);
    } else {
      state = [...state, meal];
      //* state.add(meal);
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
