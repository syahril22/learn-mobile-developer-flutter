import 'dart:convert';

import 'package:receipe_ap/models/response_data_meals.dart';
import 'package:http/http.dart' as http;

class NetClient {
  String baseURL = "https://www.themealdb.com/api/json/v1/1/";

  Future<ResponseDataMeals> fetchDataFilterMeals(int currentIndex) async {
    late String endPoint;
    if (currentIndex == 0) {
      endPoint = "filter.php?c=Seafood";
    } else {
      endPoint = "filter.php?c=Dessert";
    }

    try {
      final response = await http.get(Uri.parse(baseURL + endPoint));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        ResponseDataMeals data = ResponseDataMeals.fromJson(json);
        return data;
      } else {
        print(response.statusCode);
        return ResponseDataMeals(meals: []);
      }
    } catch (e) {
      print(e);
      return ResponseDataMeals(meals: []);
    }
  }

  Future<ResponseDataMeals> fetchDataDetail(String id) async {
    try {
      final endPoint = "lookup.php?i=$id";
      final response = await http.get(Uri.parse(baseURL + endPoint));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        ResponseDataMeals data = ResponseDataMeals.fromJson(json);
        return data;
      } else {
        print(response.statusCode);
        return ResponseDataMeals(meals: []);
      }
    } catch (e) {
      print(e);
      return ResponseDataMeals(meals: []);
    }
  }
}
