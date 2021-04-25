library search_event;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/filter_body/filter_item.dart';
import 'package:built_collection/built_collection.dart';

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

  @nullable
  BuiltList<FilterItem> get choices;

  @nullable
  bool get reChoose;

  GetFilteredProducts._();

  factory GetFilteredProducts([updates(GetFilteredProductsBuilder b)]) =
      _$GetFilteredProducts;
}

abstract class AddChoice extends SearchEvent
    implements Built<AddChoice, AddChoiceBuilder> {
  //fields go here

  FilterItem get filterItem;

  AddChoice._();

  factory AddChoice([updates(AddChoiceBuilder b)]) =
  _$AddChoice;
}

abstract class DeleteChoice extends SearchEvent
    implements Built<DeleteChoice, DeleteChoiceBuilder> {
  //fields go here

  FilterItem get filterItem;

  DeleteChoice._();

  factory DeleteChoice([updates(DeleteChoiceBuilder b)]) =
  _$DeleteChoice;
}


abstract class ReGetItems extends SearchEvent
    implements Built<ReGetItems, ReGetItemsBuilder> {
  //fields go here

  BuiltList<FilterItem> get choices;

  ReGetItems._();

  factory ReGetItems([updates(ReGetItemsBuilder b)]) =
  _$ReGetItems;
}