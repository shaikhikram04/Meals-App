import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_info.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    void showMealInfo() {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              MealInfoScreen(meal: meal),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: showMealInfo,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black54,
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      meal.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.access_time),
                        Text(
                          '${meal.duration} min',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.work),
                        Text(meal.complexity.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white)),
                        const SizedBox(width: 10),
                        const Icon(Icons.currency_rupee),
                        Text(meal.affordability.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
