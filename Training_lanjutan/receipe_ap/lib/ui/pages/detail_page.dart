import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:receipe_ap/database/db_helper.dart';
import 'package:receipe_ap/models/meal.dart';
import 'package:receipe_ap/network/net_client.dart';

class DetailPage extends StatefulWidget {
  final String id;
  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLoading = false;
  late Meal meal;
  final NetClient _netClient = NetClient();
  bool isFavoried = false;
  final DBHelper _dbHelper = DBHelper();

  void fetchDataDetail() async {
    setState(() {
      isLoading = true;
    });

    isFavoried = await _dbHelper.isFavorite(widget.id);

    if (isFavoried) {
      final resultMeal = await _dbHelper.getFavoriteMeal(widget.id);
      meal = resultMeal;
    } else {
      final result = await _netClient.fetchDataDetail(widget.id);
      meal = result.meals.first;
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchDataDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Receipe'),
        actions: [
          IconButton(
              onPressed: () async {
                if (isFavoried) {
                  // Delete
                  await _dbHelper.delete(meal);
                } else {
                  // insert
                  await _dbHelper.insert(meal);
                }
                setState(() {
                  isFavoried = !isFavoried;
                });
              },
              icon: isFavoried
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border))
        ],
      ),
      body: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                  strokeWidth: 5,
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Hero(
                            tag: '${meal.idMeal}',
                            child: Material(
                              child: CachedNetworkImage(
                                  imageUrl: meal.strMealThumb),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text('${meal.strMeal}'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text('Instruction'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text('${meal.strInstructions}'),
                        ),
                      )
                    ],
                  ),
                )),
    );
  }
}
