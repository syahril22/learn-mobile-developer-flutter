import 'package:flutter/material.dart';
import 'package:receipe_ap/models/response_data_meals.dart';
import 'package:receipe_ap/network/net_client.dart';
import 'package:receipe_ap/ui/pages/favorite_page.dart';
import 'package:receipe_ap/ui/widgets/list_meals_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ResponseDataMeals responseData;
  bool isLoading = false;
  final netClient = NetClient();
  var currentIndex = 0;

  void fetchDataFilterMeals() async {
    setState(() {
      isLoading = true;
    });

    responseData = await netClient.fetchDataFilterMeals(currentIndex);
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
        actions: [
          IconButton(
              onPressed: () {
                final route =
                    MaterialPageRoute(builder: (context) => FavoritePage());
                Navigator.push(context, route);
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          fetchDataFilterMeals();
        },
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : ListMealsWidgets(responseData: responseData),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
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
