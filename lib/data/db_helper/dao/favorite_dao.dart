

import 'package:floor/floor.dart';
import 'package:cadeaue_boutique/data/db_helper/entite/favorite.dart';

@dao
abstract class FavoriteDao {

  @insert
  Future<void> insertFavorite(Favorite favorite);

  @Query('SELECT * FROM Favorite')
  Future<List<Favorite>> getFavorite();

  @Query('DELETE FROM Favorite where id = :id')
  Future<void> deleteFavorite(int id);


}
