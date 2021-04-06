import 'package:cadeaue_boutique/model/track_home_model/Data.dart';
class TrackHomeModel {
    List<Data> data;
    int code;
    bool status;

    TrackHomeModel({this.data, this.code, this.status});

    factory TrackHomeModel.fromJson(Map<String, dynamic> json) {
        return TrackHomeModel(
            data: json['data'] != null ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null,
            code: json['code'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['status'] = this.status;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}