import 'package:cadeaue_boutique/model/track_home_model/Detail.dart';
import 'package:cadeaue_boutique/model/track_home_model/Gift.dart';
import 'package:cadeaue_boutique/model/track_home_model/WrapColor.dart';
class Detail {
    int cart_id;
    String created_at;
    Gift gift;
    String gift_color;
    int gift_color_id;
    int gift_id;
    int id;
    String updated_at;
    String wrap;
    WrapColor wrap_color;
    int wrap_color_id;
    int wrap_id;

    Detail({this.cart_id, this.created_at, this.gift, this.gift_color, this.gift_color_id, this.gift_id, this.id, this.updated_at, this.wrap, this.wrap_color, this.wrap_color_id, this.wrap_id});

    factory Detail.fromJson(Map<String, dynamic> json) {
        return Detail(
            cart_id: json['cart_id'], 
            created_at: json['created_at'], 
            gift: json['gift'] != null ? Gift.fromJson(json['gift']) : null, 
            gift_color: json['gift_color'], 
            gift_color_id: json['gift_color_id'], 
            gift_id: json['gift_id'], 
            id: json['id'], 
            updated_at: json['updated_at'], 
            wrap: json['wrap'], 
            wrap_color: json['wrap_color'] != null ? WrapColor.fromJson(json['wrap_color']) : null, 
            wrap_color_id: json['wrap_color_id'], 
            wrap_id: json['wrap_id'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cart_id'] = this.cart_id;
        data['created_at'] = this.created_at;
        data['gift_color'] = this.gift_color;
        data['gift_color_id'] = this.gift_color_id;
        data['gift_id'] = this.gift_id;
        data['id'] = this.id;
        data['updated_at'] = this.updated_at;
        data['wrap'] = this.wrap;
        data['wrap_color_id'] = this.wrap_color_id;
        data['wrap_id'] = this.wrap_id;
        if (this.gift != null) {
            data['gift'] = this.gift.toJson();
        }
        if (this.wrap_color != null) {
            data['wrap_color'] = this.wrap_color.toJson();
        }
        return data;
    }
}