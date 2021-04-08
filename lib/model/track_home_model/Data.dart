import 'package:cadeaue_boutique/model/track_home_model/Detail.dart';
import 'package:cadeaue_boutique/model/track_home_model/GlobalWrap.dart';
import 'package:cadeaue_boutique/model/track_home_model/GlobalWrapColor.dart';
import 'package:cadeaue_boutique/model/track_home_model/Sender.dart';
class Data {
    String country_code;
    String created_at;
    String delivered_at;
    String delivery_date;
    List<Detail> details;
    String gift_to;
    GlobalWrap global_wrap;
    GlobalWrapColor global_wrap_color;
    int id;
    String order_status;
    String payment_status;
    String phone_number;
    String receiver_id;
    Sender sender;
    String song_link;
    String song_price;
    String status;
    String total_cost;
    String updated_at;
    int user_id;
    int wrap_all_cart;
    int wrap_color;
    int wrap_id;

    Data({this.country_code, this.created_at, this.delivered_at, this.delivery_date, this.details, this.gift_to, this.global_wrap, this.global_wrap_color, this.id, this.order_status, this.payment_status, this.phone_number, this.receiver_id, this.sender, this.song_link, this.song_price, this.status, this.total_cost, this.updated_at, this.user_id, this.wrap_all_cart, this.wrap_color, this.wrap_id});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            country_code: json['country_code'], 
            created_at: json['created_at'], 
            delivered_at: json['delivered_at'], 
            delivery_date: json['delivery_date'], 
            details: json['details'] != null ? (json['details'] as List).map((i) => Detail.fromJson(i)).toList() : null, 
            gift_to: json['gift_to'], 
            global_wrap: json['global_wrap'] != null ? GlobalWrap.fromJson(json['global_wrap']) : null, 
            global_wrap_color: json['global_wrap_color'] != null ? GlobalWrapColor.fromJson(json['global_wrap_color']) : null, 
            id: json['id'], 
            order_status: json['order_status'], 
            payment_status: json['payment_status'], 
            phone_number: json['phone_number'], 
            receiver_id: json['receiver_id'], 
            sender: json['sender'] != null ? Sender.fromJson(json['sender']) : null, 
            song_link: json['song_link'], 
            song_price: json['song_price'], 
            status: json['status'], 
            total_cost: json['total_cost'], 
            updated_at: json['updated_at'], 
            user_id: json['user_id'], 
            wrap_all_cart: json['wrap_all_cart'], 
            wrap_color: json['wrap_color'], 
            wrap_id: json['wrap_id'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['country_code'] = this.country_code;
        data['created_at'] = this.created_at;
        data['delivered_at'] = this.delivered_at;
        data['delivery_date'] = this.delivery_date;
        data['gift_to'] = this.gift_to;
        data['id'] = this.id;
        data['order_status'] = this.order_status;
        data['payment_status'] = this.payment_status;
        data['phone_number'] = this.phone_number;
        data['receiver_id'] = this.receiver_id;
        data['song_link'] = this.song_link;
        data['song_price'] = this.song_price;
        data['status'] = this.status;
        data['total_cost'] = this.total_cost;
        data['updated_at'] = this.updated_at;
        data['user_id'] = this.user_id;
        data['wrap_all_cart'] = this.wrap_all_cart;
        data['wrap_color'] = this.wrap_color;
        data['wrap_id'] = this.wrap_id;
        if (this.details != null) {
            data['details'] = this.details.map((v) => v.toJson()).toList();
        }
        if (this.global_wrap != null) {
            data['global_wrap'] = this.global_wrap.toJson();
        }
        if (this.global_wrap_color != null) {
            data['global_wrap_color'] = this.global_wrap_color.toJson();
        }
        if (this.sender != null) {
            data['sender'] = this.sender.toJson();
        }
        return data;
    }
}