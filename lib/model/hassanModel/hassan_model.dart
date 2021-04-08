library hassan_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'hassan_model.g.dart';


abstract class HassanModel implements Built<HassanModel, HassanModelBuilder> {
 int get pagr;
HassanModel._();

factory HassanModel([updates(HassanModelBuilder b)]) = _$HassanModel;
}