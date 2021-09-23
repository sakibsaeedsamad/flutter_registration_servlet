import 'package:json_annotation/json_annotation.dart';
import '../user.dart';

part 'get_users.g.dart';

@JsonSerializable()
class GetUsersResponse {
  GetUsersResponse(
      this.data
      );


  final List<User> data;

  factory GetUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUsersResponseFromJson(json);
}