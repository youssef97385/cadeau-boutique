library products_event;

import 'package:built_value/built_value.dart';

part 'products_event.g.dart';

abstract class ProductsEvent{}
abstract class GetProducts extends ProductsEvent
implements Built<GetProducts, GetProductsBuilder> {

  //fields go here

  int get id;
  String get type;


  GetProducts._();

  factory GetProducts([updates(GetProductsBuilder b)]) = _$GetProducts;
}