import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Role{
  @JsonValue("code")
  String _code;
  @JsonValue("desc")
  String _desc;


  Role(this._code, this._desc);

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  String get desc => _desc;

  set desc(String value) {
    _desc = value;
  }
}

@JsonSerializable()
class Gender{
  @JsonValue("genCode")
  String _genCode;
  @JsonValue("genDesc")
  String _genDesc;


  Gender(this._genCode, this._genDesc);

  String get genCode => _genCode;

  set genCode(String value) {
    _genCode = value;
  }

  String get genDesc => _genDesc;

  set genDesc(String value) {
    _genDesc = value;
  }
}