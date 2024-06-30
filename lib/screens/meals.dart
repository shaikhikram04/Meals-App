import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (BuildContext context, int index) => MealItem(
            meal: meals[index],
          ),
        ),
      ),
    );
  }
}
