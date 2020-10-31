class User {
  String id;
  String createdAt;
  String name;
  String avatar;
  String email;
  String phone;

  User(
      {this.id,
      this.createdAt,
      this.name,
      this.avatar,
      this.email,
      this.phone});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['email'] = this.email;
    data['phone'] = this.phone;
    return data;
  }
}
