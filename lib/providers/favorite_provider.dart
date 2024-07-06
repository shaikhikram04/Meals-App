import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final isFavoriteMeal = state.contains(meal);
    if (isFavoriteMeal) {
      //! Update state is not allowed in this package
      //! we have to reassign it to create a new data
      //* state.remove(meal);

      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      //* state.add(meal);

      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
