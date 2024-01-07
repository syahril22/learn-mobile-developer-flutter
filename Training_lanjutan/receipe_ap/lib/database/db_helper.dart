import 'package:receipe_ap/models/meal.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._createInstance();
  factory DBHelper() => _instance;
  DBHelper._createInstance();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final path = await getDatabasesPath();
    String dbPath = join(path, "mealsDB");
    final db = await openDatabase(dbPath, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int version) async {
    const sql =
        "CREATE TABLE $tableName(${MealFields.id} INTEGER PRIMARY KEY, ${MealFields.idMeal} TEXT, ${MealFields.strMeal} TEXT, ${MealFields.strInstructions} TEXT, ${MealFields.strMealThumb} TEXT, ${MealFields.strCategory} TEXT)";
    await db.execute(sql);
  }

  Future<int> insert(Meal meal) async {
    try {
      final dbClient = await db;
      int response = await dbClient.insert(tableName, meal.toJson());
      return response;
    } catch (e) {
      print(e);
      return 1;
    }
  }

  Future<int> delete(Meal meal) async {
    try {
      final dbClient = await db;
      int res = await dbClient.delete(tableName,
          where: "${MealFields.idMeal} = ?", whereArgs: [meal.idMeal]);
      print("Delete Sukses");
      return res;
    } catch (e) {
      print(e);
      return 1;
    }
  }

  Future<List<Meal>> getAllFavoriteMeals(String category) async {
    final dbClient = await db;
    final res = await dbClient.query(tableName,
        where: "${MealFields.strCategory} = ?", whereArgs: [category]);
    final result = res.map((json) => Meal.fromJson(json)).toList();
    return result;
  }

  Future<bool> isFavorite(String idMeal) async {
    final dbClient = await db;
    const sql = "SELECT * FROM $tableName WHERE ${MealFields.idMeal} = ?";
    final res = await dbClient.rawQuery(sql, [idMeal]);
    return res.isNotEmpty;
  }

  Future<Meal> getFavoriteMeal(String idMeal) async {
    final dbClient = await db;
    final res = await dbClient.query(tableName,
        where: "${MealFields.idMeal} = ?", whereArgs: [idMeal]);
    if (res.isNotEmpty) {
      return Meal.fromJson(res.first);
    } else {
      throw Exception("ID $idMeal not found");
    }
  }
}
