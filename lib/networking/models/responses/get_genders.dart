import 'package:json_annotation/json_annotation.dart';
import '../gender.dart';

part 'get_genders.g.dart';

@JsonSerializable()
class GetGendersResponse {
  GetGendersResponse(
      this.data
      );


  final List<Gender> data;

  factory GetGendersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGendersResponseFromJson(json);
}