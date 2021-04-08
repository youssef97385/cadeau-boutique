
library track_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'track_model.g.dart';



abstract class TrackModel implements Built<TrackModel, TrackModelBuilder> {
  @BuiltValueField(wireName: "order_status")
  String get orderStatus;

  @BuiltValueField(wireName: "delivery_date")
  @nullable
  String get deliveryDate;

  @BuiltValueField(wireName: "gift_to")
  @nullable
  String get giftTo;

  @BuiltValueField(wireName: "total_cost")
  @nullable
  String get totalCost;

  @BuiltValueField(wireName: "delivered_at")
  @nullable
  String get deliveredAt;

  @BuiltValueField(wireName: "created_at")
  @nullable
  String get createdAt;








  int get id;
TrackModel._();

factory TrackModel([updates(TrackModelBuilder b)]) = _$TrackModel;



  String toJson() {
    return json.encode(serializers.serializeWith(TrackModel.serializer, this));
  }

  static TrackModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrackModel.serializer, json.decode(jsonString));
  }

  static Serializer<TrackModel> get serializer => _$trackModelSerializer;
}