import 'dart:convert';

// {
// 	"name": "Bahri",
// 	"email": "bahri@gmail.com",
// 	"password": "123123",
//     "avatar": "https://api.lorem.space/image/face?w=640&h=480"
// }
class RegisterModel {
  final String name;
  final String email;
  final String password;
  final String avatar;
  RegisterModel({
    required this.name,
    required this.email,
    required this.password,
    this.avatar = 'https://api.lorem.space/image/face?w=640&h=480',
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'avatar': avatar,
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      avatar: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterModel.fromJson(String source) =>
      RegisterModel.fromMap(json.decode(source));
}
