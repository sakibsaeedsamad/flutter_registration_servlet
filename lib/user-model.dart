import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  @JsonValue("name")
  String _name;
  @JsonValue("mobile")
  String _mobile;
  @JsonValue("email")
  String _email;
  @JsonValue("dob")
  String _dob;
  @JsonValue("gender")
  String _gender;
  @JsonValue("address")
  String _address;
  @JsonValue("role")
  String _role;
  @JsonValue("roledesc")
  String _roleDesc;
  @JsonValue("errorCode")
  String _errorCode;
  @JsonValue("errorMessage")
  String _errorMessage;

  User(
      this._name,
      this._mobile,
      this._email,
      this._dob,
      this._gender,
      this._address,
      this._role,
      this._roleDesc,
      this._errorCode,
      this._errorMessage);

  String get errorMessage => _errorMessage;

  set errorMessage(String value) {
    _errorMessage = value;
  }

  String get errorCode => _errorCode;

  set errorCode(String value) {
    _errorCode = value;
  }

  String get roleDesc => _roleDesc;

  set roleDesc(String value) {
    _roleDesc = value;
  }

  String get role => _role;

  set role(String value) {
    _role = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  String get dob => _dob;

  set dob(String value) {
    _dob = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get mobile => _mobile;

  set mobile(String value) {
    _mobile = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

class InsertUser{
  String requestCode = "";
  String name = "";
  String mobile  = "";
  String email = "";
  String dob = "";
  String gender = "";
  String address = "";
  String role = "";
}