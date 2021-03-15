

import 'package:cadeaue_boutique/data/db_helper/entite/favorite.dart';

import 'Idb_helper.dart';
import 'db/database.dart';

class DbHelper implements IDbHelper {
  @override
  Future<AppDatabase> _getInstDB() async {
    return await $FloorAppDatabase.databaseBuilder('bikehubDB.db').build();
  }


  @override
  Future<void> insertFavorite(Favorite favorite) async{
    try {
      return await (await _getInstDB()).favoriteDao.insertFavorite(favorite);
    } catch (e) {
      print('wishList db e is $e');
      throw Exception(e.toString());
    }
  }


  @override
  Future<List<Favorite>> getFavorite()async {
    try {
      return await (await _getInstDB()).favoriteDao.getFavorite();
    } catch (e) {
      print('wishList db e is $e');
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> deleteFavorite(int id) async{
    try {
      return await (await _getInstDB()).favoriteDao.deleteFavorite(id);
    } catch (e) {
    print('wishList db e is $e');
    throw Exception(e.toString());
    }
  }




}