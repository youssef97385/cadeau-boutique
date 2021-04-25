library filter_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'filter_item.g.dart';

abstract class FilterItem implements Built<FilterItem, FilterItemBuilder> {
  // fields go here

  @nullable
  String get key;

  @nullable
  String get value;

  @nullable
  int get id;

  FilterItem._();

  factory FilterItem([updates(FilterItemBuilder b)]) = _$FilterItem;

  String toJson() {
    return json.encode(serializers.serializeWith(FilterItem.serializer, this));
  }

  static FilterItem fromJson(String jsonString) {
    return serializers.deserializeWith(FilterItem.serializer, json.decode(jsonString));
  }

  static Serializer<FilterItem> get serializer => _$filterItemSerializer;
}
