import 'package:flutter/material.dart';
import 'package:receipe_ap/database/db_helper.dart';
import 'package:receipe_ap/models/response_data_meals.dart';
import 'package:receipe_ap/ui/widgets/list_meals_widgets.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late ResponseDataMeals responseData;
  bool isLoading = false;
  final DBHelper _dbHelper = DBHelper();

  var currentIndex = 0;
  var category = "Seafood";

  void fetchDataFilterMeals() async {
    setState(() {
      isLoading = true;
    });

    final data = await _dbHelper.getAllFavoriteMeals(category);
    responseData = ResponseDataMeals(meals: data);
    print(responseData.meals);

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchDataFilterMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipe App'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          fetchDataFilterMeals();
        },
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : ListMealsWidgets(
                  responseData: responseData,
                  fetchDataMeals: fetchDataFilterMeals,
                ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              if (value == 0) {
                category = "Seafood";
              } else {
                category = "Dessert";
              }
              fetchDataFilterMeals();
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), label: "Seafood"),
            BottomNavigationBarItem(icon: Icon(Icons.cake), label: "Dessert"),
          ]),
    );
  }
}
