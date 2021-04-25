library search_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/filter_body/filter_item.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';

import 'package:built_collection/built_collection.dart';
part 'search_state.g.dart';


abstract class SearchState
implements Built<SearchState, SearchStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;

  BuiltList<ProductModel> get products;

  BuiltList<FilterItem> get choices;

  String get url;

  SearchState._();

  factory SearchState([updates(SearchStateBuilder b)]) = _$SearchState;

  factory SearchState.initail() {
    return SearchState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..products.replace([])
      ..choices.replace([])
        ..url=""
    );
  }
}