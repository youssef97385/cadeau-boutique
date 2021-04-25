library filter_body;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/filter_body/filter_item.dart';

part 'filter_body.g.dart';

abstract class FilterBody implements Built<FilterBody, FilterBodyBuilder> {
  // fields go here

  @nullable
  BuiltList<FilterItem> get filterBody;

  FilterBody._();

  factory FilterBody([updates(FilterBodyBuilder b)]) = _$FilterBody;

  String toJson() {
    return json.encode(serializers.serializeWith(FilterBody.serializer, this));
  }

  static FilterBody fromJson(String jsonString) {
    return serializers.deserializeWith(FilterBody.serializer, json.decode(jsonString));
  }

  static Serializer<FilterBody> get serializer => _$filterBodySerializer;
}