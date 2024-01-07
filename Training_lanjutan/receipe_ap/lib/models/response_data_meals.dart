import 'package:receipe_ap/models/meal.dart';

class ResponseDataMeals {
  final List<Meal> meals;

  ResponseDataMeals({
    required this.meals,
  });

  factory ResponseDataMeals.fromJson(Map<String, dynamic> json) =>
      ResponseDataMeals(
        meals:
            List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x)) ?? []),
      );
}
