class user {
  String? response;
  String? message;
  DataUser? data;

  user({this.response, this.message, this.data});

  user.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    message = json['message'];
    data = json['data'] != null ? new DataUser.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class DataUser {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  DataUser({this.id, this.name, this.email, this.gender, this.status});

  DataUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['status'] = this.status;
    return data;
  }
}
