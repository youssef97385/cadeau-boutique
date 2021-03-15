library product_event;

import 'package:built_value/built_value.dart';

part 'product_event.g.dart';


abstract class ProductEvent {}
abstract class GetProduct extends ProductEvent
implements Built<GetProduct, GetProductBuilder> {

  //fields go here

  int get id;

  GetProduct._();

  factory GetProduct([updates(GetProductBuilder b)]) = _$GetProduct;
}