import 'dart:async';
import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:cadeaue_boutique/data/db_helper/dao/favorite_dao.dart';
import 'package:cadeaue_boutique/data/db_helper/entite/favorite.dart';

part 'database.g.dart'; // the generated code will be there

@Database(
    version: 1, entities: [Favorite])
abstract class AppDatabase extends FloorDatabase {

  FavoriteDao get favoriteDao;


}
