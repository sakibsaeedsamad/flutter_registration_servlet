import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {

  final String name;
  final String mobile;
  final String email;
  final String dob;
  final String gender;
  final String address;
  final String role;
  final String age;
  final String errorCode;
  final String errorMessage;
  final String roledesc;





  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User(this.name, this.mobile, this.email, this.dob, this.gender, this.address,
      this.role, this.age, this.errorCode, this.errorMessage, this.roledesc);
}