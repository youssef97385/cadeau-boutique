library filter_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
part 'filter_state.g.dart';


abstract class FilterState
implements Built<FilterState, FilterStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;


  BuiltList<OccasionModel> get occasions;
  BuiltList<RelationModel> get relations;


  FilterState._();

  factory FilterState([updates(FilterStateBuilder b)]) = _$FilterState;
  factory FilterState.initail() {
    return FilterState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..occasions.replace([])
        ..relations.replace([])
    );
  }
}