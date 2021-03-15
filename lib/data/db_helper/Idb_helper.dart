

import 'db/database.dart';
import 'entite/favorite.dart';

abstract class IDbHelper {
  Future<AppDatabase> _getInstDB() {}

  Future<void> insertFavorite(Favorite favorite);

  Future<List<Favorite>> getFavorite();

  Future<void> deleteFavorite(int id);

}