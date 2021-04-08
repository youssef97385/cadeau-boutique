class GlobalWrapColor {
    String color;
    int id;
    String media_path;
    int wrap_id;

    GlobalWrapColor({this.color, this.id, this.media_path, this.wrap_id});

    factory GlobalWrapColor.fromJson(Map<String, dynamic> json) {
        return GlobalWrapColor(
            color: json['color'], 
            id: json['id'], 
            media_path: json['media_path'], 
            wrap_id: json['wrap_id'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['color'] = this.color;
        data['id'] = this.id;
        data['media_path'] = this.media_path;
        data['wrap_id'] = this.wrap_id;
        return data;
    }
}