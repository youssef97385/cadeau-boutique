class Sender {
    String account_status;
    String country_code;
    String created_at;
    String date_of_birth;
    String email;
    String email_verified_at;
    String gender;
    int id;
    String name;
    int phone_number;
    String social_token;
    String updated_at;
    String user_type;

    Sender({this.account_status, this.country_code, this.created_at, this.date_of_birth, this.email, this.email_verified_at, this.gender, this.id, this.name, this.phone_number, this.social_token, this.updated_at, this.user_type});

    factory Sender.fromJson(Map<String, dynamic> json) {
        return Sender(
            account_status: json['account_status'], 
            country_code: json['country_code'], 
            created_at: json['created_at'], 
            date_of_birth: json['date_of_birth'], 
            email: json['email'], 
            email_verified_at: json['email_verified_at'], 
            gender: json['gender'], 
            id: json['id'], 
            name: json['name'], 
            phone_number: json['phone_number'], 
            social_token: json['social_token'], 
            updated_at: json['updated_at'], 
            user_type: json['user_type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['account_status'] = this.account_status;
        data['country_code'] = this.country_code;
        data['created_at'] = this.created_at;
        data['date_of_birth'] = this.date_of_birth;
        data['email'] = this.email;
        data['email_verified_at'] = this.email_verified_at;
        data['gender'] = this.gender;
        data['id'] = this.id;
        data['name'] = this.name;
        data['phone_number'] = this.phone_number;
        data['social_token'] = this.social_token;
        data['updated_at'] = this.updated_at;
        data['user_type'] = this.user_type;
        return data;
    }
}