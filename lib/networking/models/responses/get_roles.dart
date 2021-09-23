import 'package:json_annotation/json_annotation.dart';
import '../role.dart';

part 'get_roles.g.dart';

@JsonSerializable()
class GetRolesResponse {
  GetRolesResponse(
      this.data
      );


  final List<Role> data;

  factory GetRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRolesResponseFromJson(json);
}