library track_screen_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'track_screen_event.g.dart';


abstract class TrackScreenEvent{}




abstract class GetTracks  extends TrackScreenEvent
    implements Built<GetTracks, GetTracksBuilder> {

GetTracks._();

factory GetTracks([updates(GetTracksBuilder b)]) = _$GetTracks;
}


abstract class ClearError extends TrackScreenEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}