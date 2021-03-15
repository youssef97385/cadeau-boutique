import 'package:floor/floor.dart';

@entity
class Favorite {
  @primaryKey
  int id;

  String name;

  int price;

  String image;

  bool isFromUsedBiked;

  Favorite({this.id,this.name, this.price, this.image,this.isFromUsedBiked});
}
