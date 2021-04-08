library track_screen_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
part 'track_screen_state.g.dart';


abstract class TrackScreenState implements Built<TrackScreenState, TrackScreenStateBuilder> {
  bool get success;
  bool get isLoading;
  String get error;

  BuiltList<TrackModel> get tracks;
TrackScreenState._();

factory TrackScreenState([updates(TrackScreenStateBuilder b)]) = _$TrackScreenState;


  factory TrackScreenState.initail() {
    return TrackScreenState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..tracks.replace([])

    );
  }
}