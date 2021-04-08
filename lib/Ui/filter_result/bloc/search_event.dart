library search_event;

import 'package:built_value/built_value.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}

abstract class GetFilteredProducts extends SearchEvent
    implements Built<GetFilteredProducts, GetFilteredProductsBuilder> {
  //fields go here

  @nullable
  int get occasionId;
  @nullable
  int get relationId;
  @nullable
  String get gender;
  @nullable
  String get minPrice;
  @nullable
  String get maxPrice;
  @nullable
  String get age;

  GetFilteredProducts._();

  factory GetFilteredProducts([updates(GetFilteredProductsBuilder b)]) =
      _$GetFilteredProducts;
}
