const String tableName = "favoriteMeal";

class MealFields {
  static const String id = "_id";
  static const String idMeal = "idMeal";
  static const String strMeal = "strMeal";
  static const String strInstructions = "strInstructions";
  static const String strCategory = "strCategory";
  static const String strMealThumb = "strMealThumb";
}

class Meal {
  final String strMeal;
  final String strMealThumb;
  final String idMeal;
  final String strInstructions;
  final String strCategory;

  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
    required this.strInstructions,
    required this.strCategory,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"] ?? "Meal empty",
        strMealThumb: json["strMealThumb"] ??
            "https://cdn.vectorstock.com/i/preview-1x/65/30/default-image-icon-missing-picture-page-vector-40546530.jpg",
        idMeal: json["idMeal"] ?? "No id",
        strCategory: json["strCategory"] ?? "Seafood",
        strInstructions: json["strInstructions"] ?? "strInstructions kosong",
      );

  Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
        "strInstructions": strInstructions,
        " strCategory": strCategory,
      };
}
