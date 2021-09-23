import 'package:json_annotation/json_annotation.dart';
part 'gender.g.dart';

@JsonSerializable()
class Gender {

  final String genCode;
  final String genDesc;


  Gender(this.genCode, this.genDesc);

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);

  Map<String, dynamic> toJson() => _$GenderToJson(this);
}