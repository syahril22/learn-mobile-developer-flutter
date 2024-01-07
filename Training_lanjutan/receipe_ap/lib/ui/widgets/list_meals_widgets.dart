import 'package:flutter/material.dart';
import 'package:receipe_ap/models/response_data_meals.dart';
import 'package:receipe_ap/ui/pages/detail_page.dart';
import 'package:receipe_ap/ui/widgets/item_meal_widgets.dart';

class ListMealsWidgets extends StatelessWidget {
  final ResponseDataMeals responseData;
  final Function()? fetchDataMeals;
  const ListMealsWidgets(
      {super.key, required this.responseData, this.fetchDataMeals});

  @override
  Widget build(BuildContext context) {
    if (responseData.meals.isEmpty) {
      return const Text('Data meals kosong');
    }
    return ListView.builder(
      itemCount: responseData.meals.length,
      itemBuilder: (context, index) {
        final itemMeal = responseData.meals[index];
        return GestureDetector(
            onTap: () async {
              final route = MaterialPageRoute(
                builder: (context) => DetailPage(id: itemMeal.idMeal),
              );
              await Navigator.push(context, route);
              //
              if (fetchDataMeals != null) fetchDataMeals!();
            },
            child: ItemMealWidgets(meal: itemMeal));
      },
    );
  }
}
