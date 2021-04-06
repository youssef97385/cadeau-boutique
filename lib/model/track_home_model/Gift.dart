class Gift {
    int all_relations;
    int brand_id;
    int category_id;
    String created_at;
    String description;
    int for_all_ages;
    int for_both;
    String for_gender;
    int id;
    int likes;
    String main_price;
    int max_age;
    String media_path;
    int min_age;
    String name_ar;
    String name_en;
    String sale_price;
    String sold_operator;
    String sold_price;
    String updated_at;

    Gift({this.all_relations, this.brand_id, this.category_id, this.created_at, this.description, this.for_all_ages, this.for_both, this.for_gender, this.id, this.likes, this.main_price, this.max_age, this.media_path, this.min_age, this.name_ar, this.name_en, this.sale_price, this.sold_operator, this.sold_price, this.updated_at});

    factory Gift.fromJson(Map<String, dynamic> json) {
        return Gift(
            all_relations: json['all_relations'], 
            brand_id: json['brand_id'], 
            category_id: json['category_id'], 
            created_at: json['created_at'], 
            description: json['description'], 
            for_all_ages: json['for_all_ages'], 
            for_both: json['for_both'], 
            for_gender: json['for_gender'], 
            id: json['id'], 
            likes: json['likes'], 
            main_price: json['main_price'], 
            max_age: json['max_age'], 
            media_path: json['media_path'], 
            min_age: json['min_age'], 
            name_ar: json['name_ar'], 
            name_en: json['name_en'], 
            sale_price: json['sale_price'], 
            sold_operator: json['sold_operator'], 
            sold_price: json['sold_price'], 
            updated_at: json['updated_at'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['all_relations'] = this.all_relations;
        data['brand_id'] = this.brand_id;
        data['category_id'] = this.category_id;
        data['created_at'] = this.created_at;
        data['description'] = this.description;
        data['for_all_ages'] = this.for_all_ages;
        data['for_both'] = this.for_both;
        data['for_gender'] = this.for_gender;
        data['id'] = this.id;
        data['likes'] = this.likes;
        data['main_price'] = this.main_price;
        data['max_age'] = this.max_age;
        data['media_path'] = this.media_path;
        data['min_age'] = this.min_age;
        data['name_ar'] = this.name_ar;
        data['name_en'] = this.name_en;
        data['sale_price'] = this.sale_price;
        data['sold_operator'] = this.sold_operator;
        data['sold_price'] = this.sold_price;
        data['updated_at'] = this.updated_at;
        return data;
    }
}