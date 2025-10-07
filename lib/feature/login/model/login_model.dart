class LoginModel {
  bool? result;
  String? accessToken;
  String? refreshToken;
  User? user;

  LoginModel({this.result, this.accessToken, this.refreshToken, this.user});

  LoginModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  String? phone;
  String? role;

  User({this.id, this.username, this.email, this.phone, this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['role'] = this.role;
    return data;
  }
}