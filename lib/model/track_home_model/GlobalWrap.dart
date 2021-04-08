class GlobalWrap {
    int group_wrap_id;
    int id;
    String main_price;
    String media_path;
    String name_ar;
    String name_en;

    GlobalWrap({this.group_wrap_id, this.id, this.main_price, this.media_path, this.name_ar, this.name_en});

    factory GlobalWrap.fromJson(Map<String, dynamic> json) {
        return GlobalWrap(
            group_wrap_id: json['group_wrap_id'], 
            id: json['id'], 
            main_price: json['main_price'], 
            media_path: json['media_path'], 
            name_ar: json['name_ar'], 
            name_en: json['name_en'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['group_wrap_id'] = this.group_wrap_id;
        data['id'] = this.id;
        data['main_price'] = this.main_price;
        data['media_path'] = this.media_path;
        data['name_ar'] = this.name_ar;
        data['name_en'] = this.name_en;
        return data;
    }
}