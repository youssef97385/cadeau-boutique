import 'package:floor/floor.dart';

@entity
class Cart {
  @PrimaryKey(autoGenerate: true)
  int id;
  String title ;
  String item_id;
  String image;
  int quantity;
  double price;


  Cart( {this.id, this.title , this.item_id, this.image,this.quantity,this.price});
}
