import 'package:floor/floor.dart';
import 'package:cadeaue_boutique/data/db_helper/entite/cart.dart';

@dao
abstract class CartDao {
  @insert
  Future<void> insertCart(Cart cart);

  @Query('SELECT * FROM Cart ')
  Future<List<Cart>> getCart();

  @Query('DELETE FROM Cart where id = :id')
  Future<void> deleteCart(int id);
}
